//
//  GitHubSearchViewController.swift
//  UnioSample
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Unio
import UIKit
import RxCocoa
import RxSwift

final class GitHubSearchViewController: UIViewController {

    let searchBar = UISearchBar(frame: .zero)
    let tableView = UITableView(frame: .zero)

    private let viewStream: GitHubSearchViewStreamType
    private let disposeBag = DisposeBag()

    init(viewStream: GitHubSearchViewStreamType = GitHubSearchViewStream()) {
        self.viewStream = viewStream
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            tableView.register(SubtitleTableViewCell.self, forCellReuseIdentifier: "Cell")
            tableView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(tableView)
            NSLayoutConstraint.activate([.top, .bottom, .right, .left].map {
                NSLayoutConstraint(item: view!,
                                   attribute: $0,
                                   relatedBy: .equal,
                                   toItem: tableView,
                                   attribute: $0,
                                   multiplier: 1,
                                   constant: 0)
            })

            navigationItem.titleView = searchBar
        }

        do {
            let input = viewStream.input

            #if swift(>=5.1)
            searchBar.rx.text
                .bind(to: input.searchText)
                .disposed(by: disposeBag)
            #else
            searchBar.rx.text
                .bind(to: input.accept(for: \.searchText))
                .disposed(by: disposeBag)
            #endif
        }

        do {
            let output = viewStream.output

            let repositories: Observable<[GitHub.Repository]>
            #if swift(>=5.1)
            repositories = output.observables.repositories
            #else
            repositories = output.observable(for: \.repositories)
            #endif
            repositories
                .bind(to: tableView.rx.items(cellIdentifier: "Cell")) { row, repository, cell in
                    cell.textLabel?.text = repository.fullName
                    cell.detailTextLabel?.text = repository.htmlUrl.absoluteString
                }
                .disposed(by: disposeBag)

            let errorMessage: Observable<String>
            #if swift(>=5.1)
            errorMessage = output.observables.errorMessage
            #else
            errorMessage = output.observable(for: \.errorMessage)
            #endif
            errorMessage
                .bind(to: Binder(self) { me, message in
                    let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
                    me.present(alert, animated: true, completion: nil)
                })
                .disposed(by: disposeBag)
        }
    }
}

final class SubtitleTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
