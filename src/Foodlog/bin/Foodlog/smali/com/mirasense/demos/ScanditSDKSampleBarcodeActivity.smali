.class public Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;
.super Landroid/app/Activity;
.source "ScanditSDKSampleBarcodeActivity.java"

# interfaces
.implements Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;


# static fields
.field public static final sScanditSdkAppKey:Ljava/lang/String; = "xC9M9pI5EeKfqsmiCBSorYC0MshSPJ40MRMPvHO92Yk"


# instance fields
.field private mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public didCancel()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->stopScanning()V

    .line 220
    invoke-virtual {p0}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->finish()V

    .line 221
    return-void
.end method

.method public didManualSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User entered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    return-void
.end method

.method public didScanBarcode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "barcode"
    .parameter "symbology"

    .prologue
    .line 179
    const-string v0, ""

    .line 180
    .local v0, cleanedBarcode:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 186
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v2, result:Landroid/content/Intent;
    const-string v3, "EAN"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->finish()V

    .line 202
    return-void

    .line 181
    .end local v2           #result:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initializeAndStartBarcodeScanning()V
    .locals 4

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->requestWindowFeature(I)Z

    .line 146
    new-instance v0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;

    .line 147
    const-string v1, "xC9M9pI5EeKfqsmiCBSorYC0MshSPJ40MRMPvHO92Yk"

    const/4 v2, 0x0

    .line 146
    invoke-direct {v0, p0, v1, v2}, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 150
    .local v0, picker:Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;
    invoke-virtual {p0, v0}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->setContentView(Landroid/view/View;)V

    .line 151
    iput-object v0, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    .line 155
    iget-object v1, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getOverlayView()Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;->addListener(Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;)V

    .line 158
    iget-object v1, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getOverlayView()Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;->showSearchBar(Z)V

    .line 165
    iget-object v1, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v1, v3}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setQrEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v1, v3}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setDataMatrixEnabled(Z)V

    .line 167
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->stopScanning()V

    .line 226
    invoke-virtual {p0}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->finish()V

    .line 227
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->initializeAndStartBarcodeScanning()V

    .line 115
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->stopScanning()V

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;->mBarcodePicker:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->startScanning()V

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    return-void
.end method
