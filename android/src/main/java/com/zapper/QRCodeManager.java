package com.zapper;

import android.graphics.Bitmap;

import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.views.image.ReactImageView;

import net.glxn.qrgen.android.QRCode;

import javax.annotation.Nullable;

/**
 * Created by keiran on 2018/05/30.
 */

public class QRCodeManager extends SimpleViewManager<ReactImageView> {
  public static final String REACT_CLASS = "QRCode";
  public final @Nullable Object mCallerContext;

  private String qrCodeValue = "";
  private int size = 400;
  private @Nullable ReactImageView mImageView = null;

  @SuppressWarnings("deprecation")
  @ReactProp(name = "value")
  public void setValue(ReactImageView view, @Nullable String value) {
    qrCodeValue = value;
    Bitmap myBitmap = QRCode.from(this.qrCodeValue).withSize(this.size, this.size).bitmap();

    mImageView.setImageBitmap(myBitmap);
  }

  @SuppressWarnings("deprecation")
  @ReactProp(name = "size")
  public void setSize(ReactImageView view, @Nullable int value) {
    this.size = value;

    if (this.qrCodeValue != "") {
      Bitmap myBitmap = QRCode.from(this.qrCodeValue).withSize(this.size, this.size).bitmap();

      mImageView.setImageBitmap(myBitmap);
    }
  }

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  public QRCodeManager(Object callerContext) {
    mCallerContext = callerContext;
  }

  public QRCodeManager() {
    mCallerContext = null;
  }

  @SuppressWarnings("deprecation")
  @Override
  public ReactImageView createViewInstance(ThemedReactContext context) {
    mImageView = new ReactImageView(context, Fresco.newDraweeControllerBuilder(), null, mCallerContext);

    return mImageView;
  }
}
