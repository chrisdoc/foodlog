.class final Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ANSIX12_ENCODE:I = 0x4

.field private static final ASCII_ENCODE:I = 0x1

.field private static final BASE256_ENCODE:I = 0x6

.field private static final C40_BASIC_SET_CHARS:[C = null

.field private static final C40_ENCODE:I = 0x2

.field private static final C40_SHIFT2_SET_CHARS:[C = null

.field private static final EDIFACT_ENCODE:I = 0x5

.field private static final PAD_ENCODE:I = 0x0

.field private static final TEXT_BASIC_SET_CHARS:[C = null

.field private static final TEXT_ENCODE:I = 0x3

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 41
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 47
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 56
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    .line 41
    nop

    :array_0
    .array-data 0x2
        0x2at 0x0t
        0x2at 0x0t
        0x2at 0x0t
        0x20t 0x0t
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
    .end array-data

    .line 47
    :array_1
    .array-data 0x2
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
    .end array-data

    .line 56
    nop

    :array_2
    .array-data 0x2
        0x2at 0x0t
        0x2at 0x0t
        0x2at 0x0t
        0x20t 0x0t
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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    .line 62
    :array_3
    .array-data 0x2
        0x27t 0x0t
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
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static decode([B)Lcom/mirasense/scanditsdk/twod/common/DecoderResult;
    .locals 9
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 79
    new-instance v0, Lcom/mirasense/scanditsdk/twod/common/BitSource;

    invoke-direct {v0, p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;-><init>([B)V

    .line 80
    .local v0, bits:Lcom/mirasense/scanditsdk/twod/common/BitSource;
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v6, 0x64

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 81
    .local v3, result:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 82
    .local v4, resultTrailer:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v7}, Ljava/util/Vector;-><init>(I)V

    .line 83
    .local v1, byteSegments:Ljava/util/Vector;
    const/4 v2, 0x1

    .line 85
    .local v2, mode:I
    :cond_0
    if-ne v2, v7, :cond_4

    .line 86
    invoke-static {v0, v3, v4}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v2

    .line 109
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 110
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_2
    new-instance v6, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v1, v5

    .end local v1           #byteSegments:Ljava/util/Vector;
    :cond_3
    invoke-direct {v6, p0, v7, v1, v5}, Lcom/mirasense/scanditsdk/twod/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object v6

    .line 88
    .restart local v1       #byteSegments:Ljava/util/Vector;
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 105
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v5

    throw v5

    .line 90
    :pswitch_0
    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V

    .line 107
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 96
    :pswitch_2
    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 99
    :pswitch_3
    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 102
    :pswitch_4
    invoke-static {v0, v3, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 7
    .parameter "bits"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    .line 358
    new-array v1, v5, [I

    .line 361
    .local v1, cValues:[I
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    invoke-virtual {p0, v6}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v2

    .line 365
    .local v2, firstByte:I
    const/16 v4, 0xfe

    if-eq v2, v4, :cond_1

    .line 369
    invoke-virtual {p0, v6}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 371
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_9

    .line 372
    aget v0, v1, v3

    .line 373
    .local v0, cValue:I
    if-nez v0, :cond_3

    .line 374
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 375
    :cond_3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 376
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 377
    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 378
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 379
    :cond_5
    if-ne v0, v5, :cond_6

    .line 380
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 381
    :cond_6
    const/16 v4, 0xe

    if-ge v0, v4, :cond_7

    .line 382
    add-int/lit8 v4, v0, 0x2c

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 383
    :cond_7
    const/16 v4, 0x28

    if-ge v0, v4, :cond_8

    .line 384
    add-int/lit8 v4, v0, 0x33

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 386
    :cond_8
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v4

    throw v4

    .line 389
    .end local v0           #cValue:I
    :cond_9
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0
.end method

.method private static decodeAsciiSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "bits"
    .parameter "result"
    .parameter "resultTrailer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, upperShift:Z
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v0

    .line 124
    .local v0, oneByte:I
    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v3

    throw v3

    .line 126
    :cond_1
    const/16 v5, 0x80

    if-gt v0, v5, :cond_3

    .line 127
    if-eqz v1, :cond_2

    add-int/lit16 v0, v0, 0x80

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 129
    add-int/lit8 v4, v0, -0x1

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    :goto_0
    return v3

    .line 131
    :cond_3
    const/16 v5, 0x81

    if-ne v0, v5, :cond_4

    move v3, v4

    .line 132
    goto :goto_0

    .line 133
    :cond_4
    const/16 v5, 0xe5

    if-gt v0, v5, :cond_7

    .line 134
    add-int/lit16 v2, v0, -0x82

    .line 135
    .local v2, value:I
    const/16 v5, 0xa

    if-ge v2, v5, :cond_5

    .line 136
    const/16 v5, 0x30

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    .end local v2           #value:I
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_0

    .line 139
    :cond_7
    const/16 v5, 0xe6

    if-ne v0, v5, :cond_8

    .line 140
    const/4 v3, 0x2

    goto :goto_0

    .line 141
    :cond_8
    const/16 v5, 0xe7

    if-ne v0, v5, :cond_9

    .line 142
    const/4 v3, 0x6

    goto :goto_0

    .line 143
    :cond_9
    const/16 v5, 0xe8

    if-eq v0, v5, :cond_6

    const/16 v5, 0xe9

    if-eq v0, v5, :cond_6

    const/16 v5, 0xea

    if-eq v0, v5, :cond_6

    .line 147
    const/16 v5, 0xeb

    if-ne v0, v5, :cond_a

    .line 148
    const/4 v1, 0x1

    goto :goto_1

    .line 149
    :cond_a
    const/16 v5, 0xec

    if-ne v0, v5, :cond_b

    .line 150
    const-string v5, "[)>\u001e05\u001d"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v5, "\u001e\u0004"

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 152
    :cond_b
    const/16 v5, 0xed

    if-ne v0, v5, :cond_c

    .line 153
    const-string v5, "[)>\u001e06\u001d"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v5, "\u001e\u0004"

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 155
    :cond_c
    const/16 v5, 0xee

    if-ne v0, v5, :cond_d

    .line 156
    const/4 v3, 0x4

    goto :goto_0

    .line 157
    :cond_d
    const/16 v5, 0xef

    if-ne v0, v5, :cond_e

    .line 158
    const/4 v3, 0x3

    goto :goto_0

    .line 159
    :cond_e
    const/16 v5, 0xf0

    if-ne v0, v5, :cond_f

    .line 160
    const/4 v3, 0x5

    goto :goto_0

    .line 161
    :cond_f
    const/16 v5, 0xf1

    if-eq v0, v5, :cond_6

    .line 165
    const/16 v5, 0xf2

    if-lt v0, v5, :cond_6

    .line 167
    const/16 v5, 0xfe

    if-ne v0, v5, :cond_10

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v5

    if-eqz v5, :cond_6

    .line 170
    :cond_10
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeBase256Segment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V
    .locals 10
    .parameter "bits"
    .parameter "result"
    .parameter "byteSegments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    .line 439
    const/4 v1, 0x2

    .line 440
    .local v1, codewordPosition:I
    invoke-virtual {p0, v9}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v2, v1, 0x1

    .end local v1           #codewordPosition:I
    .local v2, codewordPosition:I
    invoke-static {v7, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v4

    .line 442
    .local v4, d1:I
    if-nez v4, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v7

    div-int/lit8 v3, v7, 0x8

    .local v3, count:I
    move v1, v2

    .line 451
    .end local v2           #codewordPosition:I
    .restart local v1       #codewordPosition:I
    :goto_0
    if-gez v3, :cond_2

    .line 452
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v7

    throw v7

    .line 444
    .end local v1           #codewordPosition:I
    .end local v3           #count:I
    .restart local v2       #codewordPosition:I
    :cond_0
    const/16 v7, 0xfa

    if-ge v4, v7, :cond_1

    .line 445
    move v3, v4

    .restart local v3       #count:I
    move v1, v2

    .end local v2           #codewordPosition:I
    .restart local v1       #codewordPosition:I
    goto :goto_0

    .line 447
    .end local v1           #codewordPosition:I
    .end local v3           #count:I
    .restart local v2       #codewordPosition:I
    :cond_1
    add-int/lit16 v7, v4, -0xf9

    mul-int/lit16 v7, v7, 0xfa

    invoke-virtual {p0, v9}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #codewordPosition:I
    .restart local v1       #codewordPosition:I
    invoke-static {v8, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v8

    add-int v3, v7, v8

    .restart local v3       #count:I
    goto :goto_0

    .line 455
    :cond_2
    new-array v0, v3, [B

    .line 456
    .local v0, bytes:[B
    const/4 v5, 0x0

    .local v5, i:I
    move v2, v1

    .end local v1           #codewordPosition:I
    .restart local v2       #codewordPosition:I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v7

    if-ge v7, v9, :cond_3

    .line 460
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v7

    throw v7

    .line 462
    :cond_3
    invoke-virtual {p0, v9}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v1, v2, 0x1

    .end local v2           #codewordPosition:I
    .restart local v1       #codewordPosition:I
    invoke-static {v7, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v7

    aput-byte v7, v0, v5

    .line 456
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1           #codewordPosition:I
    .restart local v2       #codewordPosition:I
    goto :goto_1

    .line 464
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 466
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "ISO8859_1"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v6

    .line 468
    .local v6, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Platform does not support required encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static decodeC40Segment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 10
    .parameter "bits"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 184
    const/4 v6, 0x0

    .line 186
    .local v6, upperShift:Z
    new-array v2, v8, [I

    .line 189
    .local v2, cValues:[I
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    invoke-virtual {p0, v9}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v3

    .line 193
    .local v3, firstByte:I
    const/16 v7, 0xfe

    if-eq v3, v7, :cond_1

    .line 197
    invoke-virtual {p0, v9}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v3, v7, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 199
    const/4 v5, 0x0

    .line 200
    .local v5, shift:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_c

    .line 201
    aget v1, v2, v4

    .line 202
    .local v1, cValue:I
    packed-switch v5, :pswitch_data_0

    .line 255
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v7

    throw v7

    .line 204
    :pswitch_0
    if-ge v1, v8, :cond_3

    .line 205
    add-int/lit8 v5, v1, 0x1

    .line 200
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 206
    :cond_3
    sget-object v7, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 207
    sget-object v7, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 208
    .local v0, c40char:C
    if-eqz v6, :cond_4

    .line 209
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    const/4 v6, 0x0

    goto :goto_2

    .line 212
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 215
    .end local v0           #c40char:C
    :cond_5
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v7

    throw v7

    .line 219
    :pswitch_1
    if-eqz v6, :cond_6

    .line 220
    add-int/lit16 v7, v1, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    const/4 v6, 0x0

    .line 225
    :goto_3
    const/4 v5, 0x0

    .line 226
    goto :goto_2

    .line 223
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 228
    :pswitch_2
    sget-object v7, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_8

    .line 229
    sget-object v7, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 230
    .restart local v0       #c40char:C
    if-eqz v6, :cond_7

    .line 231
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 232
    const/4 v6, 0x0

    .line 243
    .end local v0           #c40char:C
    :goto_4
    const/4 v5, 0x0

    .line 244
    goto :goto_2

    .line 234
    .restart local v0       #c40char:C
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 236
    .end local v0           #c40char:C
    :cond_8
    const/16 v7, 0x1b

    if-ne v1, v7, :cond_9

    .line 237
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v7

    throw v7

    .line 238
    :cond_9
    const/16 v7, 0x1e

    if-ne v1, v7, :cond_a

    .line 239
    const/4 v6, 0x1

    goto :goto_4

    .line 241
    :cond_a
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v7

    throw v7

    .line 246
    :pswitch_3
    if-eqz v6, :cond_b

    .line 247
    add-int/lit16 v7, v1, 0xe0

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    const/4 v6, 0x0

    .line 252
    :goto_5
    const/4 v5, 0x0

    .line 253
    goto :goto_2

    .line 250
    :cond_b
    add-int/lit8 v7, v1, 0x60

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 258
    .end local v1           #cValue:I
    :cond_c
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v7

    if-gtz v7, :cond_0

    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 5
    .parameter "bits"
    .parameter "result"

    .prologue
    .line 406
    const/4 v2, 0x0

    .line 409
    .local v2, unlatch:Z
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_2

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_6

    .line 414
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v0

    .line 417
    .local v0, edifactValue:I
    const/16 v3, 0x1f

    if-ne v0, v3, :cond_3

    .line 418
    const/4 v2, 0x1

    .line 423
    :cond_3
    if-nez v2, :cond_5

    .line 424
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_4

    .line 425
    or-int/lit8 v0, v0, 0x40

    .line 427
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 413
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v0           #edifactValue:I
    :cond_6
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0
.end method

.method private static decodeTextSegment(Lcom/mirasense/scanditsdk/twod/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 11
    .parameter "bits"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    .line 268
    const/4 v7, 0x0

    .line 270
    .local v7, upperShift:Z
    new-array v2, v9, [I

    .line 271
    .local v2, cValues:[I
    const/4 v5, 0x0

    .line 274
    .local v5, shift:I
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    invoke-virtual {p0, v10}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v3

    .line 278
    .local v3, firstByte:I
    const/16 v8, 0xfe

    if-eq v3, v8, :cond_1

    .line 282
    invoke-virtual {p0, v10}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->readBits(I)I

    move-result v8

    invoke-static {v3, v8, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 284
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v9, :cond_d

    .line 285
    aget v1, v2, v4

    .line 286
    .local v1, cValue:I
    packed-switch v5, :pswitch_data_0

    .line 345
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v8

    throw v8

    .line 288
    :pswitch_0
    if-ge v1, v9, :cond_3

    .line 289
    add-int/lit8 v5, v1, 0x1

    .line 284
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 290
    :cond_3
    sget-object v8, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v8, v8

    if-ge v1, v8, :cond_5

    .line 291
    sget-object v8, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v6, v8, v1

    .line 292
    .local v6, textChar:C
    if-eqz v7, :cond_4

    .line 293
    add-int/lit16 v8, v6, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    const/4 v7, 0x0

    goto :goto_2

    .line 296
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 299
    .end local v6           #textChar:C
    :cond_5
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v8

    throw v8

    .line 303
    :pswitch_1
    if-eqz v7, :cond_6

    .line 304
    add-int/lit16 v8, v1, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    const/4 v7, 0x0

    .line 309
    :goto_3
    const/4 v5, 0x0

    .line 310
    goto :goto_2

    .line 307
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 313
    :pswitch_2
    sget-object v8, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v8

    if-ge v1, v8, :cond_8

    .line 314
    sget-object v8, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v8, v1

    .line 315
    .local v0, c40char:C
    if-eqz v7, :cond_7

    .line 316
    add-int/lit16 v8, v0, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    const/4 v7, 0x0

    .line 328
    .end local v0           #c40char:C
    :goto_4
    const/4 v5, 0x0

    .line 329
    goto :goto_2

    .line 319
    .restart local v0       #c40char:C
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 321
    .end local v0           #c40char:C
    :cond_8
    const/16 v8, 0x1b

    if-ne v1, v8, :cond_9

    .line 322
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v8

    throw v8

    .line 323
    :cond_9
    const/16 v8, 0x1e

    if-ne v1, v8, :cond_a

    .line 324
    const/4 v7, 0x1

    goto :goto_4

    .line 326
    :cond_a
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v8

    throw v8

    .line 331
    :pswitch_3
    sget-object v8, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v8, v8

    if-ge v1, v8, :cond_c

    .line 332
    sget-object v8, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v6, v8, v1

    .line 333
    .restart local v6       #textChar:C
    if-eqz v7, :cond_b

    .line 334
    add-int/lit16 v8, v6, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 335
    const/4 v7, 0x0

    .line 339
    :goto_5
    const/4 v5, 0x0

    .line 340
    goto :goto_2

    .line 337
    :cond_b
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 341
    .end local v6           #textChar:C
    :cond_c
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v8

    throw v8

    .line 348
    .end local v1           #cValue:I
    :cond_d
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitSource;->available()I

    move-result v8

    if-gtz v8, :cond_0

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 4
    .parameter "firstByte"
    .parameter "secondByte"
    .parameter "result"

    .prologue
    .line 393
    shl-int/lit8 v2, p0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 394
    .local v0, fullBitValue:I
    div-int/lit16 v1, v0, 0x640

    .line 395
    .local v1, temp:I
    const/4 v2, 0x0

    aput v1, p2, v2

    .line 396
    mul-int/lit16 v2, v1, 0x640

    sub-int/2addr v0, v2

    .line 397
    div-int/lit8 v1, v0, 0x28

    .line 398
    const/4 v2, 0x1

    aput v1, p2, v2

    .line 399
    const/4 v2, 0x2

    mul-int/lit8 v3, v1, 0x28

    sub-int v3, v0, v3

    aput v3, p2, v2

    .line 400
    return-void
.end method

.method private static unrandomize255State(II)B
    .locals 3
    .parameter "randomizedBase256Codeword"
    .parameter "base256CodewordPosition"

    .prologue
    .line 477
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    .line 478
    .local v0, pseudoRandomNumber:I
    sub-int v1, p0, v0

    .line 479
    .local v1, tempVariable:I
    if-ltz v1, :cond_0

    .end local v1           #tempVariable:I
    :goto_0
    int-to-byte v2, v1

    return v2

    .restart local v1       #tempVariable:I
    :cond_0
    add-int/lit16 v1, v1, 0x100

    goto :goto_0
.end method
