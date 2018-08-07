import React from 'react'
import { requireNativeComponent } from 'react-native'

const NativeQRCode = requireNativeComponent('QRCode')

const QRCode = props => {
  return <NativeQRCode {...props} style={{ width: props.size, height: props.size, ...props.style }} />
}

export default QRCode