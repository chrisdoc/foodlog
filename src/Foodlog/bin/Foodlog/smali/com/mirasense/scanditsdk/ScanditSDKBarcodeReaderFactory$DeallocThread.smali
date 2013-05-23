.class Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;
.super Ljava/lang/Thread;
.source "ScanditSDKBarcodeReaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeallocThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;


# direct methods
.method public constructor <init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;
    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I
    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->access$100(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)I

    move-result v0

    if-lez v0, :cond_1

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;
    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->canDealloc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;
    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->deallocRecognitionEngine()V

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->access$202(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    goto :goto_1

    .line 73
    :cond_2
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method
