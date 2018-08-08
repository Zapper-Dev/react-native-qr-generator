import React, { PureComponent } from 'react'
import PropTypes from 'prop-types'
import { requireNativeComponent } from 'react-native'

const NativeQRCode = requireNativeComponent('QRCode')

class QRCode extends PureComponent {
  static propTypes = {
    value: PropTypes.string.isRequired,
    size: PropTypes.number,
    foregroundColor: PropTypes.string,
    backgroundColor: PropTypes.string
  }

  render() {
    const { backgroundColor, foregroundColor, ...props } = this.props
    return <NativeQRCode bgColor={backgroundColor} fgColor={foregroundColor} {...props} style={{ width: props.size, height: props.size, ...props.style }} />
  }
}

export default QRCode