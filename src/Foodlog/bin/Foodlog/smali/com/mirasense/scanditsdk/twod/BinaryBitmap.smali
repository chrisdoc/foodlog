.class public final Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field private final binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

.field private matrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/mirasense/scanditsdk/twod/Binarizer;)V
    .locals 2
    .parameter "binarizer"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binarizer must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->matrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 39
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getLuminanceSource()Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mirasense/scanditsdk/twod/LuminanceSource;->crop(IIII)Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v0

    .line 108
    .local v0, newSource:Lcom/mirasense/scanditsdk/twod/LuminanceSource;
    new-instance v1, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;

    iget-object v2, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v2, v0}, Lcom/mirasense/scanditsdk/twod/Binarizer;->createBinarizer(Lcom/mirasense/scanditsdk/twod/LuminanceSource;)Lcom/mirasense/scanditsdk/twod/Binarizer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;-><init>(Lcom/mirasense/scanditsdk/twod/Binarizer;)V

    return-object v1
.end method

.method public getBlackMatrix()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->matrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getBlackMatrix()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->matrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->matrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    return-object v0
.end method

.method public getBlackRow(ILcom/mirasense/scanditsdk/twod/common/BitArray;)Lcom/mirasense/scanditsdk/twod/common/BitArray;
    .locals 1
    .parameter "y"
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v0, p1, p2}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getBlackRow(ILcom/mirasense/scanditsdk/twod/common/BitArray;)Lcom/mirasense/scanditsdk/twod/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getLuminanceSource()Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/LuminanceSource;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getLuminanceSource()Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/LuminanceSource;->getWidth()I

    move-result v0

    return v0
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getLuminanceSource()Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/LuminanceSource;->isCropSupported()Z

    move-result v0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getLuminanceSource()Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/LuminanceSource;->isRotateSupported()Z

    move-result v0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/Binarizer;->getLuminanceSource()Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/LuminanceSource;->rotateCounterClockwise()Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    move-result-object v0

    .line 125
    .local v0, newSource:Lcom/mirasense/scanditsdk/twod/LuminanceSource;
    new-instance v1, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;

    iget-object v2, p0, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->binarizer:Lcom/mirasense/scanditsdk/twod/Binarizer;

    invoke-virtual {v2, v0}, Lcom/mirasense/scanditsdk/twod/Binarizer;->createBinarizer(Lcom/mirasense/scanditsdk/twod/LuminanceSource;)Lcom/mirasense/scanditsdk/twod/Binarizer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;-><init>(Lcom/mirasense/scanditsdk/twod/Binarizer;)V

    return-object v1
.end method
