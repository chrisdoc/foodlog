.class public final Lcom/mirasense/scanditsdk/twod/BarcodeFormat;
.super Ljava/lang/Object;
.source "BarcodeFormat.java"


# static fields
.field public static final AZTEC:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final CODABAR:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final CODE_128:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final CODE_39:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final CODE_93:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final DATA_MATRIX:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final EAN_13:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final EAN_8:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final ITF:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final PDF_417:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final QR_CODE:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final RSS_14:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final RSS_EXPANDED:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final UPC_A:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final UPC_E:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field public static final UPC_EAN_EXTENSION:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

.field private static final VALUES:Ljava/util/Hashtable;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->VALUES:Ljava/util/Hashtable;

    .line 33
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "AZTEC"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->AZTEC:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 36
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "CODABAR"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->CODABAR:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 39
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "CODE_39"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->CODE_39:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 42
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "CODE_93"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->CODE_93:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 45
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "CODE_128"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->CODE_128:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 48
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "DATA_MATRIX"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->DATA_MATRIX:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 51
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "EAN_8"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->EAN_8:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 54
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "EAN_13"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->EAN_13:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 57
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "ITF"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->ITF:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 60
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "PDF_417"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->PDF_417:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 63
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "QR_CODE"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->QR_CODE:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 66
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "RSS_14"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->RSS_14:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 69
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "RSS_EXPANDED"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->RSS_EXPANDED:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 72
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "UPC_A"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->UPC_A:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 75
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "UPC_E"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->UPC_E:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 78
    new-instance v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    const-string v1, "UPC_EAN_EXTENSION"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->name:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mirasense/scanditsdk/twod/BarcodeFormat;
    .locals 2
    .parameter "name"

    .prologue
    .line 96
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 99
    :cond_1
    sget-object v1, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    .line 100
    .local v0, format:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;
    if-nez v0, :cond_2

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->name:Ljava/lang/String;

    return-object v0
.end method
