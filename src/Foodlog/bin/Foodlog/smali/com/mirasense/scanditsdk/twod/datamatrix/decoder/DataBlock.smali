.class final Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .parameter "numDataCodewords"
    .parameter "codewords"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;)[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;
    .locals 25
    .parameter "rawCodewords"
    .parameter "version"

    .prologue
    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->getECBlocks()Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    move-result-object v4

    .line 52
    .local v4, ecBlocks:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;
    const/16 v21, 0x0

    .line 53
    .local v21, totalBlocks:I
    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    move-result-object v3

    .line 54
    .local v3, ecBlockArray:[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v5, v0, :cond_0

    .line 55
    aget-object v22, v3, v5

    invoke-virtual/range {v22 .. v22}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v22

    add-int v21, v21, v22

    .line 54
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :cond_0
    move/from16 v0, v21

    new-array v0, v0, [Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;

    move-object/from16 v18, v0

    .line 60
    .local v18, result:[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;
    const/4 v14, 0x0

    .line 61
    .local v14, numResultBlocks:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_2

    .line 62
    aget-object v2, v3, v7

    .line 63
    .local v2, ecBlock:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_1

    .line 64
    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    .line 65
    .local v12, numDataCodewords:I
    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v22

    add-int v11, v22, v12

    .line 66
    .local v11, numBlockCodewords:I
    add-int/lit8 v15, v14, 0x1

    .end local v14           #numResultBlocks:I
    .local v15, numResultBlocks:I
    new-instance v22, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;

    new-array v0, v11, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v22, v18, v14

    .line 63
    add-int/lit8 v5, v5, 0x1

    move v14, v15

    .end local v15           #numResultBlocks:I
    .restart local v14       #numResultBlocks:I
    goto :goto_2

    .line 61
    .end local v11           #numBlockCodewords:I
    .end local v12           #numDataCodewords:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 73
    .end local v2           #ecBlock:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;
    :cond_2
    const/16 v22, 0x0

    aget-object v22, v18, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v9, v0

    .line 76
    .local v9, longerBlocksTotalCodewords:I
    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v22

    sub-int v8, v9, v22

    .line 77
    .local v8, longerBlocksNumDataCodewords:I
    add-int/lit8 v19, v8, -0x1

    .line 80
    .local v19, shorterBlocksNumDataCodewords:I
    const/16 v16, 0x0

    .line 81
    .local v16, rawCodewordsOffset:I
    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    .line 82
    const/4 v7, 0x0

    move/from16 v17, v16

    .end local v16           #rawCodewordsOffset:I
    .local v17, rawCodewordsOffset:I
    :goto_4
    if-ge v7, v14, :cond_3

    .line 83
    aget-object v22, v18, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    aget-byte v23, p0, v17

    aput-byte v23, v22, v5

    .line 82
    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v17       #rawCodewordsOffset:I
    goto :goto_4

    .line 81
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v17

    .end local v17           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v22

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    .line 89
    .local v20, specialVersion:Z
    :goto_5
    if-eqz v20, :cond_6

    const/16 v13, 0x8

    .line 90
    .local v13, numLongerBlocks:I
    :goto_6
    const/4 v7, 0x0

    move/from16 v17, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v17       #rawCodewordsOffset:I
    :goto_7
    if-ge v7, v13, :cond_7

    .line 91
    aget-object v22, v18, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    add-int/lit8 v23, v8, -0x1

    add-int/lit8 v16, v17, 0x1

    .end local v17           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    aget-byte v24, p0, v17

    aput-byte v24, v22, v23

    .line 90
    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v17       #rawCodewordsOffset:I
    goto :goto_7

    .line 88
    .end local v13           #numLongerBlocks:I
    .end local v17           #rawCodewordsOffset:I
    .end local v20           #specialVersion:Z
    .restart local v16       #rawCodewordsOffset:I
    :cond_5
    const/16 v20, 0x0

    goto :goto_5

    .restart local v20       #specialVersion:Z
    :cond_6
    move v13, v14

    .line 89
    goto :goto_6

    .line 95
    .end local v16           #rawCodewordsOffset:I
    .restart local v13       #numLongerBlocks:I
    .restart local v17       #rawCodewordsOffset:I
    :cond_7
    const/16 v22, 0x0

    aget-object v22, v18, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v10, v0

    .line 96
    .local v10, max:I
    move v5, v8

    move/from16 v16, v17

    .end local v17           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    :goto_8
    if-ge v5, v10, :cond_a

    .line 97
    const/4 v7, 0x0

    move/from16 v17, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v17       #rawCodewordsOffset:I
    :goto_9
    if-ge v7, v14, :cond_9

    .line 98
    if-eqz v20, :cond_8

    const/16 v22, 0x7

    move/from16 v0, v22

    if-le v7, v0, :cond_8

    add-int/lit8 v6, v5, -0x1

    .line 99
    .local v6, iOffset:I
    :goto_a
    aget-object v22, v18, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    aget-byte v23, p0, v17

    aput-byte v23, v22, v6

    .line 97
    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v17       #rawCodewordsOffset:I
    goto :goto_9

    .end local v6           #iOffset:I
    :cond_8
    move v6, v5

    .line 98
    goto :goto_a

    .line 96
    :cond_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v17

    .end local v17           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    goto :goto_8

    .line 103
    :cond_a
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 104
    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v22

    .line 107
    :cond_b
    return-object v18
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
