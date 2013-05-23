.class final Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

.field private parsedFormatInfo:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)V
    .locals 3
    .parameter "bitMatrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getHeight()I

    move-result v0

    .line 37
    .local v0, dimension:I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v1

    throw v1

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 41
    return-void
.end method

.method private copyBit(III)I
    .locals 1
    .parameter "i"
    .parameter "j"
    .parameter "versionBits"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_0

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    shl-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method


# virtual methods
.method readCodewords()[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    move-result-object v8

    .line 152
    .local v8, formatInfo:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    move-result-object v16

    .line 156
    .local v16, version:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;
    invoke-virtual {v8}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask;->forReference(I)Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask;

    move-result-object v6

    .line 157
    .local v6, dataMask:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getHeight()I

    move-result v7

    .line 158
    .local v7, dimension:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;I)V

    .line 160
    invoke-virtual/range {v16 .. v16}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->buildFunctionPattern()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v9

    .line 162
    .local v9, functionPattern:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    const/4 v12, 0x1

    .line 163
    .local v12, readingUp:Z
    invoke-virtual/range {v16 .. v16}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [B

    .line 164
    .local v13, result:[B
    const/4 v14, 0x0

    .line 165
    .local v14, resultOffset:I
    const/4 v5, 0x0

    .line 166
    .local v5, currentByte:I
    const/4 v2, 0x0

    .line 168
    .local v2, bitsRead:I
    add-int/lit8 v11, v7, -0x1

    .local v11, j:I
    :goto_0
    if-lez v11, :cond_5

    .line 169
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v11, v0, :cond_0

    .line 172
    add-int/lit8 v11, v11, -0x1

    .line 175
    :cond_0
    const/4 v4, 0x0

    .local v4, count:I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 176
    if-eqz v12, :cond_2

    add-int/lit8 v17, v7, -0x1

    sub-int v10, v17, v4

    .line 177
    .local v10, i:I
    :goto_2
    const/4 v3, 0x0

    .local v3, col:I
    move v15, v14

    .end local v14           #resultOffset:I
    .local v15, resultOffset:I
    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v3, v0, :cond_3

    .line 179
    sub-int v17, v11, v3

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v17

    if-nez v17, :cond_7

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 182
    shl-int/lit8 v5, v5, 0x1

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-object/from16 v17, v0

    sub-int v18, v11, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 184
    or-int/lit8 v5, v5, 0x1

    .line 187
    :cond_1
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    .line 188
    add-int/lit8 v14, v15, 0x1

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    int-to-byte v0, v5

    move/from16 v17, v0

    aput-byte v17, v13, v15

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v5, 0x0

    .line 177
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v15, v14

    .end local v14           #resultOffset:I
    .restart local v15       #resultOffset:I
    goto :goto_3

    .end local v3           #col:I
    .end local v10           #i:I
    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    :cond_2
    move v10, v4

    .line 176
    goto :goto_2

    .line 175
    .end local v14           #resultOffset:I
    .restart local v3       #col:I
    .restart local v10       #i:I
    .restart local v15       #resultOffset:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v14, v15

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    goto :goto_1

    .line 195
    .end local v3           #col:I
    .end local v10           #i:I
    :cond_4
    xor-int/lit8 v12, v12, 0x1

    .line 168
    add-int/lit8 v11, v11, -0x2

    goto :goto_0

    .line 197
    .end local v4           #count:I
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_6

    .line 198
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v17

    throw v17

    .line 200
    :cond_6
    return-object v13

    .end local v14           #resultOffset:I
    .restart local v3       #col:I
    .restart local v4       #count:I
    .restart local v10       #i:I
    .restart local v15       #resultOffset:I
    :cond_7
    move v14, v15

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    goto :goto_4
.end method

.method readFormatInformation()Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/16 v7, 0x8

    .line 52
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_0

    .line 53
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    .line 83
    :goto_0
    return-object v6

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    .local v1, formatInfoBits1:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v6, 0x6

    if-ge v3, v6, :cond_1

    .line 59
    invoke-direct {p0, v3, v7, v1}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_1
    invoke-direct {p0, v8, v7, v1}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 63
    invoke-direct {p0, v7, v7, v1}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 64
    invoke-direct {p0, v7, v8, v1}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 66
    const/4 v4, 0x5

    .local v4, j:I
    :goto_2
    if-ltz v4, :cond_2

    .line 67
    invoke-direct {p0, v7, v4, v1}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 66
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 71
    :cond_2
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getHeight()I

    move-result v0

    .line 72
    .local v0, dimension:I
    const/4 v2, 0x0

    .line 73
    .local v2, formatInfoBits2:I
    add-int/lit8 v5, v0, -0x7

    .line 74
    .local v5, jMin:I
    add-int/lit8 v4, v0, -0x1

    :goto_3
    if-lt v4, v5, :cond_3

    .line 75
    invoke-direct {p0, v7, v4, v2}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 74
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 77
    :cond_3
    add-int/lit8 v3, v0, -0x8

    :goto_4
    if-ge v3, v0, :cond_4

    .line 78
    invoke-direct {p0, v3, v7, v2}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 81
    :cond_4
    invoke-static {v1, v2}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    move-result-object v6

    iput-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    .line 82
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_5

    .line 83
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/FormatInformation;

    goto :goto_0

    .line 85
    :cond_5
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v6

    throw v6
.end method

.method readVersion()Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    if-eqz v6, :cond_0

    .line 98
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    .line 132
    :goto_0
    return-object v6

    .line 101
    :cond_0
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getHeight()I

    move-result v0

    .line 103
    .local v0, dimension:I
    add-int/lit8 v6, v0, -0x11

    shr-int/lit8 v4, v6, 0x2

    .line 104
    .local v4, provisionalVersion:I
    const/4 v6, 0x6

    if-gt v4, v6, :cond_1

    .line 105
    invoke-static {v4}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    move-result-object v6

    goto :goto_0

    .line 109
    :cond_1
    const/4 v5, 0x0

    .line 110
    .local v5, versionBits:I
    add-int/lit8 v2, v0, -0xb

    .line 111
    .local v2, ijMin:I
    const/4 v3, 0x5

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_3

    .line 112
    add-int/lit8 v1, v0, -0x9

    .local v1, i:I
    :goto_2
    if-lt v1, v2, :cond_2

    .line 113
    invoke-direct {p0, v1, v3, v5}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    .line 112
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 111
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 117
    .end local v1           #i:I
    :cond_3
    invoke-static {v5}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    move-result-object v6

    iput-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    .line 118
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v6

    if-ne v6, v0, :cond_4

    .line 119
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    goto :goto_0

    .line 123
    :cond_4
    const/4 v5, 0x0

    .line 124
    const/4 v1, 0x5

    .restart local v1       #i:I
    :goto_3
    if-ltz v1, :cond_6

    .line 125
    add-int/lit8 v3, v0, -0x9

    :goto_4
    if-lt v3, v2, :cond_5

    .line 126
    invoke-direct {p0, v1, v3, v5}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    .line 125
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 124
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 130
    :cond_6
    invoke-static {v5}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    move-result-object v6

    iput-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    .line 131
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v6

    if-ne v6, v0, :cond_7

    .line 132
    iget-object v6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;

    goto :goto_0

    .line 134
    :cond_7
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v6

    throw v6
.end method