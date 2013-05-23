.class public final Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;,
        Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;,
        Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;


# instance fields
.field private final dataRegionSizeColumns:I

.field private final dataRegionSizeRows:I

.field private final ecBlocks:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

.field private final symbolSizeColumns:I

.field private final symbolSizeRows:I

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->buildVersions()[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->VERSIONS:[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    return-void
.end method

.method private constructor <init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V
    .locals 7
    .parameter "versionNumber"
    .parameter "symbolSizeRows"
    .parameter "symbolSizeColumns"
    .parameter "dataRegionSizeRows"
    .parameter "dataRegionSizeColumns"
    .parameter "ecBlocks"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->versionNumber:I

    .line 46
    iput p2, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->symbolSizeRows:I

    .line 47
    iput p3, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->symbolSizeColumns:I

    .line 48
    iput p4, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->dataRegionSizeRows:I

    .line 49
    iput p5, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    .line 50
    iput-object p6, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->ecBlocks:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    .line 53
    const/4 v4, 0x0

    .line 54
    .local v4, total:I
    invoke-virtual {p6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v1

    .line 55
    .local v1, ecCodewords:I
    invoke-virtual {p6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    move-result-object v2

    .line 56
    .local v2, ecbArray:[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 57
    aget-object v0, v2, v3

    .line 58
    .local v0, ecBlock:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v5

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v6

    add-int/2addr v6, v1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v0           #ecBlock:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;
    :cond_0
    iput v4, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->totalCodewords:I

    .line 61
    return-void
.end method

.method private static buildVersions()[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;
    .locals 15

    .prologue
    .line 178
    const/16 v0, 0x1e

    new-array v7, v0, [Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v8, 0x0

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/16 v5, 0x8

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/4 v9, 0x5

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v1, 0x2

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xa

    const/16 v5, 0xa

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/4 v9, 0x7

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v1, 0x3

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xc

    const/16 v5, 0xc

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0xa

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0xe

    const/16 v5, 0xe

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0xc

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v1, 0x5

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0x10

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0xe

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x12

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v1, 0x6

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x12

    const/16 v5, 0x12

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x12

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x16

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/4 v1, 0x7

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x14

    const/16 v5, 0x14

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x14

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x1e

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x7

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x8

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x16

    const/16 v5, 0x16

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x18

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x24

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x9

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x18

    const/16 v5, 0x18

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x1c

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x2c

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x9

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0xa

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0xe

    const/16 v5, 0xe

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x24

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0xb

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x10

    const/16 v5, 0x10

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x2a

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x56

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xb

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0xc

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x12

    const/16 v5, 0x12

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x30

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x72

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xc

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0xd

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x14

    const/16 v5, 0x14

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x38

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x90

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xd

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0xe

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x16

    const/16 v5, 0x16

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x44

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0xae

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xe

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0xf

    const/16 v2, 0x34

    const/16 v3, 0x34

    const/16 v4, 0x18

    const/16 v5, 0x18

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x2a

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x2

    const/16 v12, 0x66

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xf

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x10

    const/16 v2, 0x40

    const/16 v3, 0x40

    const/16 v4, 0xe

    const/16 v5, 0xe

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x38

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x2

    const/16 v12, 0x8c

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x10

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x11

    const/16 v2, 0x48

    const/16 v3, 0x48

    const/16 v4, 0x10

    const/16 v5, 0x10

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x24

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x4

    const/16 v12, 0x5c

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x11

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x12

    const/16 v2, 0x50

    const/16 v3, 0x50

    const/16 v4, 0x12

    const/16 v5, 0x12

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x30

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x4

    const/16 v12, 0x72

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x12

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x13

    const/16 v2, 0x58

    const/16 v3, 0x58

    const/16 v4, 0x14

    const/16 v5, 0x14

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x38

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x4

    const/16 v12, 0x90

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x13

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x14

    const/16 v2, 0x60

    const/16 v3, 0x60

    const/16 v4, 0x16

    const/16 v5, 0x16

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x44

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x4

    const/16 v12, 0xae

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x14

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x15

    const/16 v2, 0x68

    const/16 v3, 0x68

    const/16 v4, 0x18

    const/16 v5, 0x18

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x38

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x6

    const/16 v12, 0x88

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x15

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x16

    const/16 v2, 0x78

    const/16 v3, 0x78

    const/16 v4, 0x12

    const/16 v5, 0x12

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x44

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x6

    const/16 v12, 0xaf

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x16

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x17

    const/16 v2, 0x84

    const/16 v3, 0x84

    const/16 v4, 0x14

    const/16 v5, 0x14

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x3e

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0xa3

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x17

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x18

    const/16 v2, 0x90

    const/16 v3, 0x90

    const/16 v4, 0x16

    const/16 v5, 0x16

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x3e

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0x9c

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    new-instance v11, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x9b

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v12, 0x0

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x18

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x19

    const/16 v2, 0x8

    const/16 v3, 0x12

    const/4 v4, 0x6

    const/16 v5, 0x10

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/4 v9, 0x7

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x19

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x1a

    const/16 v2, 0x8

    const/16 v3, 0x20

    const/4 v4, 0x6

    const/16 v5, 0xe

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0xb

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x1b

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xa

    const/16 v5, 0x18

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0xe

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x1c

    const/16 v2, 0xc

    const/16 v3, 0x24

    const/16 v4, 0xa

    const/16 v5, 0x10

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x12

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x16

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x1d

    const/16 v2, 0x10

    const/16 v3, 0x24

    const/16 v4, 0xe

    const/16 v5, 0x10

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x18

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x20

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d

    new-instance v0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    const/16 v1, 0x1e

    const/16 v2, 0x10

    const/16 v3, 0x30

    const/16 v4, 0xe

    const/16 v5, 0x16

    new-instance v6, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    const/16 v9, 0x1c

    new-instance v10, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x31

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;-><init>(IILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECB;Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;-><init>(IIIIILcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    return-object v7
.end method

.method public static getVersionForDimensions(II)Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;
    .locals 4
    .parameter "numRows"
    .parameter "numColumns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation

    .prologue
    .line 100
    and-int/lit8 v3, p0, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    .line 101
    :cond_0
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v3

    throw v3

    .line 107
    :cond_1
    sget-object v3, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->VERSIONS:[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    array-length v1, v3

    .line 108
    .local v1, numVersions:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 109
    sget-object v3, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->VERSIONS:[Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;

    aget-object v2, v3, v0

    .line 110
    .local v2, version:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;
    iget v3, v2, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->symbolSizeRows:I

    if-ne v3, p0, :cond_2

    iget v3, v2, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->symbolSizeColumns:I

    if-ne v3, p1, :cond_2

    .line 111
    return-object v2

    .line 108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v2           #version:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;
    :cond_3
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/FormatException;->getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public getDataRegionSizeColumns()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    return v0
.end method

.method public getDataRegionSizeRows()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->dataRegionSizeRows:I

    return v0
.end method

.method getECBlocks()Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->ecBlocks:Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version$ECBlocks;

    return-object v0
.end method

.method public getSymbolSizeColumns()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->symbolSizeColumns:I

    return v0
.end method

.method public getSymbolSizeRows()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->symbolSizeRows:I

    return v0
.end method

.method public getTotalCodewords()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
