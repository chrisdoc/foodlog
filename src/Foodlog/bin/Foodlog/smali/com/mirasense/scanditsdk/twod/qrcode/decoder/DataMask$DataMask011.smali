.class Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask$DataMask011;
.super Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataMask011"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask;-><init>(Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask$DataMask011;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 114
    add-int v0, p1, p2

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
