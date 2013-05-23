.class public Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;
.super Ljava/lang/Object;
.source "ScanditSDKBarcodeReader.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "filesDir"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->initializeRecognitionEngine(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method private escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"

    .prologue
    .line 20
    move-object v1, p1

    .line 21
    .local v1, cleanString:Ljava/lang/String;
    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .local v2, i:B
    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    .line 23
    const/4 v4, 0x1

    new-array v0, v4, [B

    const/4 v4, 0x0

    aput-byte v2, v0, v4

    .line 24
    .local v0, chars:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 25
    .local v3, s:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    add-int/lit8 v4, v2, 0x1

    int-to-byte v2, v4

    goto :goto_0

    .line 27
    .end local v0           #chars:[B
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private native initializeRecognitionEngine(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native needsFocusedImage()Z
.end method

.method private native setScanLocation(Ljava/lang/String;)V
.end method


# virtual methods
.method protected native canDealloc()Z
.end method

.method protected native contains2dCode()Z
.end method

.method protected native deallocRecognitionEngine()V
.end method

.method protected native enableCode39(Z)V
.end method

.method protected native enableDataMatrix(Z)V
.end method

.method protected native enableEan128(Z)V
.end method

.method protected native enableEan13Upc12(Z)V
.end method

.method protected native enableEan8(Z)V
.end method

.method protected native enableInverseDetection(Z)V
.end method

.method protected native enableItf(Z)V
.end method

.method protected native enableMicroDataMatrix(Z)V
.end method

.method protected native enableQR(Z)V
.end method

.method protected native enableUpce(Z)V
.end method

.method protected native fetchLuckShotResult()Ljava/lang/String;
.end method

.method protected native fetchResult()Ljava/lang/String;
.end method

.method protected native force1dRecognition(Z)V
.end method

.method protected native force2dRecognition(Z)V
.end method

.method protected native getAnalyticsErrorMessage()Ljava/lang/String;
.end method

.method protected native getExactPositionOfFinalBarcode()[I
.end method

.method protected native getPreRunScanlineAmount()I
.end method

.method protected native getRoughCodePosition()[I
.end method

.method protected native getSharpScanlineAmount()I
.end method

.method protected native getTimeRequiredForEngineInitialization()I
.end method

.method protected native getTimeRequiredForRecognitionOfLastImage()I
.end method

.method protected native hasAnalyticsErrorOccured()Z
.end method

.method protected native imageBlur()I
.end method

.method protected native isBarcodeDecoded()Z
.end method

.method protected native isBarcodePossiblyClose()Z
.end method

.method protected native isBarcodePresent()Z
.end method

.method protected native isRecognitionEngineReady()Z
.end method

.method protected native processImage([BIII)V
.end method

.method protected native resetEngine()V
.end method

.method protected native setDeviceInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected native setEan128Certainty(I)V
.end method

.method protected native setEan128OversizeOfBlackBars(I)V
.end method

.method protected native setHotSpot(FF)V
.end method

.method protected native setPreRunScanlineAmount(I)V
.end method

.method protected native setPreRunScanlineOffset(I)I
.end method

.method protected setScanLocation(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, loc:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setScanLocation(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method protected native setSharpScanlineAmount(I)V
.end method

.method protected native setSharpScanlineOffset(I)V
.end method

.method protected native tryingToDealloc(I)V
.end method
