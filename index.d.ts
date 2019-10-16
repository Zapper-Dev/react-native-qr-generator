declare module "react-native-qr-generator" {
    import React from 'react';

    export interface QRCodeProps {
        value: string;
        size?: number;
        foregroundColor?: string;
        backgroundColor?: string;
    }

    export class QRCode extends React.Component<QRCodeProps> { };

    export default QRCode;
}
