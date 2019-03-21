#!/usr/bin/env sh

# Configuration
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/Unio'
UNIO_COMPONENTS_TEMPLATE_DIR="$XCODE_TEMPLATE_DIR""/Unio Components.xctemplate"
UNIO_STREAM_TEMPLATE_DIR="$XCODE_TEMPLATE_DIR"/UnioStream.xctemplate
UNIO_STREAM_UNIT_TEST_TEMPLATE_DIR="$XCODE_TEMPLATE_DIR""/UnioStream Unit Tests.xctemplate"
UNIO_STREAM_MOCK_TEMPLATE_DIR="$XCODE_TEMPLATE_DIR""/Mock UnioStream.xctemplate"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy Unio file templates into the local Unio template directory
xcodeTemplate () {
  echo "==> Copying up Unio Xcode file templates..."

  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/"Unio Components.xctemplate" "$XCODE_TEMPLATE_DIR"
  cp -R "$UNIO_COMPONENTS_TEMPLATE_DIR"/Default/* "$UNIO_COMPONENTS_TEMPLATE_DIR"/WithXIB/
  cp -R "$UNIO_COMPONENTS_TEMPLATE_DIR"/Default/* "$UNIO_COMPONENTS_TEMPLATE_DIR"/WithStoryboard/

  cp -R $SCRIPT_DIR/UnioStream.xctemplate "$XCODE_TEMPLATE_DIR"
  cp -R $SCRIPT_DIR"/UnioStream Unit Tests.xctemplate" "$XCODE_TEMPLATE_DIR"
  cp -R $SCRIPT_DIR"/Mock UnioStream.xctemplate" "$XCODE_TEMPLATE_DIR"
}

xcodeTemplate

echo "==> ... success!"
echo "==> Unio have been set up. In Xcode, select 'New File...' to use Unio templates."
