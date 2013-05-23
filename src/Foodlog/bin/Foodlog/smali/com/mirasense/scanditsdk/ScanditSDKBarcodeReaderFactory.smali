.class public Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
.super Ljava/lang/Object;
.source "ScanditSDKBarcodeReaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;


# instance fields
.field private mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

.field private mFilesDir:Ljava/io/File;

.field private mReaderSubscriptions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "filesDir"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I

    .line 15
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mFilesDir:Ljava/io/File;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I

    return v0
.end method

.method static synthetic access$202(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    return-object p0
.end method

.method protected static getInstance()Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    return-object v0
.end method

.method protected static getInstance(Ljava/io/File;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
    .locals 1
    .parameter "filesDir"

    .prologue
    .line 19
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    invoke-direct {v0, p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    .line 22
    :cond_0
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    return-object v0
.end method

.method private loadBarcodeReader()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mFilesDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    .line 47
    return-void
.end method


# virtual methods
.method protected subscribeForReader()Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I

    .line 31
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->loadBarcodeReader()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    return-object v0
.end method

.method protected unsubscribe()V
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I

    .line 39
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mReaderSubscriptions:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->tryingToDealloc(I)V

    .line 41
    new-instance v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;

    invoke-direct {v0, p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;-><init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;)V

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory$DeallocThread;->start()V

    .line 43
    :cond_0
    return-void
.end method
