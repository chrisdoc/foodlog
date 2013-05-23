.class public final Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/mirasense/scanditsdk/twod/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/mirasense/scanditsdk/twod/ResultPoint;


# instance fields
.field private final decoder:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mirasense/scanditsdk/twod/ResultPoint;

    sput-object v0, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->decoder:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .locals 15
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v4

    .line 100
    .local v4, leftTopBlack:[I
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v10

    .line 101
    .local v10, rightBottomBlack:[I
    if-eqz v4, :cond_0

    if-nez v10, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v14

    throw v14

    .line 105
    :cond_1
    invoke-static {v4, p0}, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->moduleSize([ILcom/mirasense/scanditsdk/twod/common/BitMatrix;)I

    move-result v7

    .line 107
    .local v7, moduleSize:I
    const/4 v14, 0x1

    aget v11, v4, v14

    .line 108
    .local v11, top:I
    const/4 v14, 0x1

    aget v1, v10, v14

    .line 109
    .local v1, bottom:I
    const/4 v14, 0x0

    aget v3, v4, v14

    .line 110
    .local v3, left:I
    const/4 v14, 0x0

    aget v9, v10, v14

    .line 112
    .local v9, right:I
    sub-int v14, v9, v3

    add-int/lit8 v14, v14, 0x1

    div-int v6, v14, v7

    .line 113
    .local v6, matrixWidth:I
    sub-int v14, v1, v11

    add-int/lit8 v14, v14, 0x1

    div-int v5, v14, v7

    .line 114
    .local v5, matrixHeight:I
    if-eqz v6, :cond_2

    if-nez v5, :cond_3

    .line 115
    :cond_2
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v14

    throw v14

    .line 121
    :cond_3
    shr-int/lit8 v8, v7, 0x1

    .line 122
    .local v8, nudge:I
    add-int/2addr v11, v8

    .line 123
    add-int/2addr v3, v8

    .line 126
    new-instance v0, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-direct {v0, v6, v5}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;-><init>(II)V

    .line 127
    .local v0, bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    const/4 v13, 0x0

    .local v13, y:I
    :goto_0
    if-ge v13, v5, :cond_6

    .line 128
    mul-int v14, v13, v7

    add-int v2, v11, v14

    .line 129
    .local v2, iOffset:I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_1
    if-ge v12, v6, :cond_5

    .line 130
    mul-int v14, v12, v7

    add-int/2addr v14, v3

    invoke-virtual {p0, v14, v2}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 131
    invoke-virtual {v0, v12, v13}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->set(II)V

    .line 129
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 127
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 135
    .end local v2           #iOffset:I
    .end local v12           #x:I
    :cond_6
    return-object v0
.end method

.method private static moduleSize([ILcom/mirasense/scanditsdk/twod/common/BitMatrix;)I
    .locals 6
    .parameter "leftTopBlack"
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getWidth()I

    move-result v1

    .line 140
    .local v1, width:I
    aget v2, p0, v5

    .line 141
    .local v2, x:I
    const/4 v4, 0x1

    aget v3, p0, v4

    .line 142
    .local v3, y:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2, v3}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    if-ne v2, v1, :cond_1

    .line 146
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v4

    throw v4

    .line 149
    :cond_1
    aget v4, p0, v5

    sub-int v0, v2, v4

    .line 150
    .local v0, moduleSize:I
    if-nez v0, :cond_2

    .line 151
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v4

    throw v4

    .line 153
    :cond_2
    return v0
.end method


# virtual methods
.method public decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;)Lcom/mirasense/scanditsdk/twod/Result;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;,
            Lcom/mirasense/scanditsdk/twod/ChecksumException;,
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/Result;
    .locals 8
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;,
            Lcom/mirasense/scanditsdk/twod/ChecksumException;,
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p2, :cond_2

    sget-object v5, Lcom/mirasense/scanditsdk/twod/DecodeHintType;->PURE_BARCODE:Lcom/mirasense/scanditsdk/twod/DecodeHintType;

    invoke-virtual {p2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->getBlackMatrix()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v5

    invoke-static {v5}, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->extractPureBits(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v0

    .line 66
    .local v0, bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->decoder:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;

    invoke-virtual {v5, v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;->decode(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    move-result-object v1

    .line 67
    .local v1, decoderResult:Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    sget-object v3, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    .line 73
    .end local v0           #bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .local v3, points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :goto_0
    new-instance v4, Lcom/mirasense/scanditsdk/twod/Result;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;->getRawBytes()[B

    move-result-object v6

    sget-object v7, Lcom/mirasense/scanditsdk/twod/BarcodeFormat;->DATA_MATRIX:Lcom/mirasense/scanditsdk/twod/BarcodeFormat;

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/mirasense/scanditsdk/twod/Result;-><init>(Ljava/lang/String;[B[Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/BarcodeFormat;)V

    .line 75
    .local v4, result:Lcom/mirasense/scanditsdk/twod/Result;
    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 76
    sget-object v5, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->BYTE_SEGMENTS:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mirasense/scanditsdk/twod/Result;->putMetadata(Lcom/mirasense/scanditsdk/twod/ResultMetadataType;Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 79
    sget-object v5, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mirasense/scanditsdk/twod/Result;->putMetadata(Lcom/mirasense/scanditsdk/twod/ResultMetadataType;Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-object v4

    .line 69
    .end local v1           #decoderResult:Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    .end local v3           #points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .end local v4           #result:Lcom/mirasense/scanditsdk/twod/Result;
    :cond_2
    new-instance v5, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;->getBlackMatrix()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;-><init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)V

    invoke-virtual {v5}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->detect()Lcom/mirasense/scanditsdk/twod/common/DetectorResult;

    move-result-object v2

    .line 70
    .local v2, detectorResult:Lcom/mirasense/scanditsdk/twod/common/DetectorResult;
    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;->decoder:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;->getBits()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Decoder;->decode(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    move-result-object v1

    .line 71
    .restart local v1       #decoderResult:Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;->getPoints()[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v3

    .restart local v3       #points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
