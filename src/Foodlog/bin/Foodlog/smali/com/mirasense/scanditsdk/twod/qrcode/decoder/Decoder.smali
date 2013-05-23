.class public final Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/mirasense/scanditsdk/twod/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/mirasense/scanditsdk/twod/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/mirasense/scanditsdk/twod/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Decoder;->rsDecoder:Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonDecoder;

    .line 41
    return-void
.end method

.method private correctErrors([BI)V
    .locals 6
    .parameter "codewordBytes"
    .parameter "numDataCodewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/ChecksumException;
        }
    .end annotation

    .prologue
    .line 125
    array-length v2, p1

    .line 127
    .local v2, numCodewords:I
    new-array v0, v2, [I

    .line 128
    .local v0, codewordsInts:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 129
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    array-length v5, p1

    sub-int v3, v5, p2

    .line 133
    .local v3, numECCodewords:I
    :try_start_0
    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Decoder;->rsDecoder:Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v3}, Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 140
    aget v5, v0, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, rse:Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/ChecksumException;->getChecksumInstance()Lcom/mirasense/scanditsdk/twod/ChecksumException;

    move-result-object v5

    throw v5

    .line 142
    .end local v4           #rse:Lcom/mirasense/scanditsdk/twod/common/reedsolomon/ReedSolomonException;
    :cond_1
    return-void
.end method


# virtual methods
.method public decode(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    .locals 1
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/ChecksumException;,
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Decoder;->decode(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    .locals 16
    .parameter "bits"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;,
            Lcom/mirasense/scanditsdk/twod/ChecksumException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v9, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;-><init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)V

    .line 85
    .local v9, parser:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;
    invoke-virtual {v9}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    move-result-object v14

    .line 86
    .local v14, version:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;
    invoke-virtual {v9}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/mirasense/scanditsdk/twod/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v5

    .line 89
    .local v5, ecLevel:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual {v9}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 91
    .local v2, codewords:[B
    invoke-static {v2, v14, v5}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;Lcom/mirasense/scanditsdk/twod/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;

    move-result-object v4

    .line 94
    .local v4, dataBlocks:[Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;
    const/4 v13, 0x0

    .line 95
    .local v13, totalBytes:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v15, v4

    if-ge v6, v15, :cond_0

    .line 96
    aget-object v15, v4, v6

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v15

    add-int/2addr v13, v15

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-array v10, v13, [B

    .line 99
    .local v10, resultBytes:[B
    const/4 v11, 0x0

    .line 102
    .local v11, resultOffset:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    array-length v15, v4

    if-ge v7, v15, :cond_2

    .line 103
    aget-object v3, v4, v7

    .line 104
    .local v3, dataBlock:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;
    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v1

    .line 105
    .local v1, codewordBytes:[B
    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v8

    .line 106
    .local v8, numDataCodewords:I
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 107
    const/4 v6, 0x0

    move v12, v11

    .end local v11           #resultOffset:I
    .local v12, resultOffset:I
    :goto_2
    if-ge v6, v8, :cond_1

    .line 108
    add-int/lit8 v11, v12, 0x1

    .end local v12           #resultOffset:I
    .restart local v11       #resultOffset:I
    aget-byte v15, v1, v6

    aput-byte v15, v10, v12

    .line 107
    add-int/lit8 v6, v6, 0x1

    move v12, v11

    .end local v11           #resultOffset:I
    .restart local v12       #resultOffset:I
    goto :goto_2

    .line 102
    :cond_1
    add-int/lit8 v7, v7, 0x1

    move v11, v12

    .end local v12           #resultOffset:I
    .restart local v11       #resultOffset:I
    goto :goto_1

    .line 113
    .end local v1           #codewordBytes:[B
    .end local v3           #dataBlock:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataBlock;
    .end local v8           #numDataCodewords:I
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v10, v14, v5, v0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;Lcom/mirasense/scanditsdk/twod/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    move-result-object v15

    return-object v15
.end method

.method public decode([[Z)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/ChecksumException;,
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Decoder;->decode([[ZLjava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    .locals 5
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/ChecksumException;,
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 57
    array-length v1, p1

    .line 58
    .local v1, dimension:I
    new-instance v0, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;-><init>(I)V

    .line 59
    .local v0, bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 60
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 61
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v0, v3, v2}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->set(II)V

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v3           #j:I
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Decoder;->decode(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    move-result-object v4

    return-object v4
.end method
