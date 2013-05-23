.class final Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C = null

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x20t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static decode([BLcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;Lcom/mirasense/scanditsdk/twod/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    .locals 14
    .parameter "bytes"
    .parameter "version"
    .parameter "ecLevel"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/mirasense/scanditsdk/twod/common/BitSource;

    invoke-direct {v0, p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;-><init>([B)V

    .line 56
    .local v0, bits:Lcom/mirasense/scanditsdk/twod/common/BitSource;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v5, 0x32

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 58
    .local v3, currentCharacterSetECI:Lcom/mirasense/scanditsdk/twod/common/CharacterSetECI;
    const/4 v7, 0x0

    .line 59
    .local v7, fc1InEffect:Z
    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 63
    .local v4, byteSegments:Ljava/util/Vector;
    :cond_0
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v5

    const/4 v12, 0x4

    if-ge v5, v12, :cond_4

    .line 65
    sget-object v9, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->TERMINATOR:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    .line 73
    .local v9, mode:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;
    :goto_0
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->TERMINATOR:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 76
    :cond_1
    const/4 v7, 0x1

    .line 115
    :cond_2
    :goto_1
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->TERMINATOR:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    new-instance v12, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    .end local v4           #byteSegments:Ljava/util/Vector;
    :cond_3
    if-nez p2, :cond_d

    const/4 v5, 0x0

    :goto_2
    invoke-direct {v12, p0, v13, v4, v5}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object v12

    .line 68
    .end local v9           #mode:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;
    .restart local v4       #byteSegments:Ljava/util/Vector;
    :cond_4
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v5}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->forBits(I)Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .restart local v9       #mode:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;
    goto :goto_0

    .line 69
    .end local v9           #mode:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;
    :catch_0
    move-exception v8

    .line 70
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5

    .line 77
    .end local v8           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v9       #mode:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;
    :cond_5
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 80
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    goto :goto_1

    .line 81
    :cond_6
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->ECI:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 83
    invoke-static {v0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/mirasense/scanditsdk/twod/common/BitSource;)I

    move-result v11

    .line 84
    .local v11, value:I
    invoke-static {v11}, Lcom/mirasense/scanditsdk/twod/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/mirasense/scanditsdk/twod/common/CharacterSetECI;

    move-result-object v3

    .line 85
    if-nez v3, :cond_2

    .line 86
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5

    .line 90
    .end local v11           #value:I
    :cond_7
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->HANZI:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 92
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v10

    .line 93
    .local v10, subset:I
    invoke-virtual {v9, p1}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v6

    .line 94
    .local v6, countHanzi:I
    const/4 v5, 0x1

    if-ne v10, v5, :cond_2

    .line 95
    invoke-static {v0, v1, v6}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto :goto_1

    .line 100
    .end local v6           #countHanzi:I
    .end local v10           #subset:I
    :cond_8
    invoke-virtual {v9, p1}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Version;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v2

    .line 101
    .local v2, count:I
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->NUMERIC:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 102
    invoke-static {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto :goto_1

    .line 103
    :cond_9
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 104
    invoke-static {v0, v1, v2, v7}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_1

    .line 105
    :cond_a
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->BYTE:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v5, p3

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;ILcom/mirasense/scanditsdk/twod/common/CharacterSetECI;Ljava/util/Vector;Ljava/util/Hashtable;)V

    goto/16 :goto_1

    .line 107
    :cond_b
    sget-object v5, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;->KANJI:Lcom/mirasense/scanditsdk/twod/qrcode/decoder/Mode;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 108
    invoke-static {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_1

    .line 110
    :cond_c
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5

    .line 117
    .end local v2           #count:I
    .end local v4           #byteSegments:Ljava/util/Vector;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method

.method private static decodeAlphanumericSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;IZ)V
    .locals 6
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .parameter "fc1InEffect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x25

    const/4 v4, 0x1

    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 245
    .local v2, start:I
    :goto_0
    if-le p2, v4, :cond_0

    .line 246
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v1

    .line 247
    .local v1, nextTwoCharsBits:I
    div-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    rem-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    add-int/lit8 p2, p2, -0x2

    .line 250
    goto :goto_0

    .line 251
    .end local v1           #nextTwoCharsBits:I
    :cond_0
    if-ne p2, v4, :cond_1

    .line 253
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :cond_1
    if-eqz p3, :cond_4

    .line 258
    move v0, v2

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 262
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 258
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_3
    const/16 v3, 0x1d

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 270
    .end local v0           #i:I
    :cond_4
    return-void
.end method

.method private static decodeByteSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;ILcom/mirasense/scanditsdk/twod/common/CharacterSetECI;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 6
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .parameter "currentCharacterSetECI"
    .parameter "byteSegments"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 205
    shl-int/lit8 v4, p2, 0x3

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 206
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v4

    throw v4

    .line 209
    :cond_0
    new-array v2, p2, [B

    .line 210
    .local v2, readBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 211
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_1
    if-nez p3, :cond_2

    .line 220
    invoke-static {v2, p5}, Lcom/mirasense/scanditsdk/twod/common/StringUtils;->guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, encoding:Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-virtual {p4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 230
    return-void

    .line 222
    .end local v0           #encoding:Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Lcom/mirasense/scanditsdk/twod/common/CharacterSetECI;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_1

    .line 226
    :catch_0
    move-exception v3

    .line 227
    .local v3, uce:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v4

    throw v4
.end method

.method private static decodeHanziSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;I)V
    .locals 7
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 130
    mul-int/lit8 v5, p2, 0xd

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 131
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5

    .line 136
    :cond_0
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    .line 137
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 138
    .local v2, offset:I
    :goto_0
    if-lez p2, :cond_2

    .line 140
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v3

    .line 141
    .local v3, twoBytes:I
    div-int/lit8 v5, v3, 0x60

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit8 v6, v3, 0x60

    or-int v0, v5, v6

    .line 142
    .local v0, assembledTwoBytes:I
    const/16 v5, 0x3bf

    if-ge v0, v5, :cond_1

    .line 144
    const v5, 0xa1a1

    add-int/2addr v0, v5

    .line 149
    :goto_1
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 150
    add-int/lit8 v5, v2, 0x1

    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 151
    add-int/lit8 v2, v2, 0x2

    .line 152
    add-int/lit8 p2, p2, -0x1

    .line 153
    goto :goto_0

    .line 147
    :cond_1
    const v5, 0xa6a1

    add-int/2addr v0, v5

    goto :goto_1

    .line 156
    .end local v0           #assembledTwoBytes:I
    .end local v3           #twoBytes:I
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "GB2312"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-void

    .line 157
    :catch_0
    move-exception v4

    .line 158
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeKanjiSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;I)V
    .locals 7
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 166
    mul-int/lit8 v5, p2, 0xd

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 167
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5

    .line 172
    :cond_0
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    .line 173
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 174
    .local v2, offset:I
    :goto_0
    if-lez p2, :cond_2

    .line 176
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v3

    .line 177
    .local v3, twoBytes:I
    div-int/lit16 v5, v3, 0xc0

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit16 v6, v3, 0xc0

    or-int v0, v5, v6

    .line 178
    .local v0, assembledTwoBytes:I
    const/16 v5, 0x1f00

    if-ge v0, v5, :cond_1

    .line 180
    const v5, 0x8140

    add-int/2addr v0, v5

    .line 185
    :goto_1
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 186
    add-int/lit8 v5, v2, 0x1

    int-to-byte v6, v0

    aput-byte v6, v1, v5

    .line 187
    add-int/lit8 v2, v2, 0x2

    .line 188
    add-int/lit8 p2, p2, -0x1

    .line 189
    goto :goto_0

    .line 183
    :cond_1
    const v5, 0xc140

    add-int/2addr v0, v5

    goto :goto_1

    .line 192
    .end local v0           #assembledTwoBytes:I
    .end local v3           #twoBytes:I
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "SJIS"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-void

    .line 193
    :catch_0
    move-exception v4

    .line 194
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeNumericSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;I)V
    .locals 5
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 276
    :goto_0
    const/4 v3, 0x3

    if-lt p2, v3, :cond_1

    .line 278
    invoke-virtual {p0, v4}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v1

    .line 279
    .local v1, threeDigitsBits:I
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_0

    .line 280
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v3

    throw v3

    .line 282
    :cond_0
    div-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 283
    div-int/lit8 v3, v1, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    rem-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 285
    add-int/lit8 p2, p2, -0x3

    .line 286
    goto :goto_0

    .line 287
    .end local v1           #threeDigitsBits:I
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 289
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v2

    .line 290
    .local v2, twoDigitsBits:I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 291
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v3

    throw v3

    .line 293
    :cond_2
    div-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    rem-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    .end local v2           #twoDigitsBits:I
    :cond_3
    :goto_1
    return-void

    .line 295
    :cond_4
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 297
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v0

    .line 298
    .local v0, digitBits:I
    if-lt v0, v4, :cond_5

    .line 299
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v3

    throw v3

    .line 301
    :cond_5
    invoke-static {v0}, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static parseECIValue(Lcom/mirasense/scanditsdk/twod/common/BitSource;)I
    .locals 6
    .parameter "bits"

    .prologue
    const/16 v5, 0x8

    .line 306
    invoke-virtual {p0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v0

    .line 307
    .local v0, firstByte:I
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_0

    .line 309
    and-int/lit8 v3, v0, 0x7f

    .line 317
    :goto_0
    return v3

    .line 310
    :cond_0
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 312
    invoke-virtual {p0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v1

    .line 313
    .local v1, secondByte:I
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    goto :goto_0

    .line 314
    .end local v1           #secondByte:I
    :cond_1
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 316
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v2

    .line 317
    .local v2, secondThirdBytes:I
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    goto :goto_0

    .line 319
    .end local v2           #secondThirdBytes:I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad ECI bits starting with byte "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static toAlphaNumericChar(I)C
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 234
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v0

    throw v0

    .line 236
    :cond_0
    sget-object v0, Lcom/mirasense/scanditsdk/twod/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method
