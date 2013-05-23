.class public final Lcom/mirasense/scanditsdk/twod/common/DefaultGridSampler;
.super Lcom/mirasense/scanditsdk/twod/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/twod/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .locals 2
    .parameter "image"
    .parameter "dimensionX"
    .parameter "dimensionY"
    .parameter "p1ToX"
    .parameter "p1ToY"
    .parameter "p2ToX"
    .parameter "p2ToY"
    .parameter "p3ToX"
    .parameter "p3ToY"
    .parameter "p4ToX"
    .parameter "p4ToY"
    .parameter "p1FromX"
    .parameter "p1FromY"
    .parameter "p2FromX"
    .parameter "p2FromY"
    .parameter "p3FromX"
    .parameter "p3FromY"
    .parameter "p4FromX"
    .parameter "p4FromY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static/range {p4 .. p19}, Lcom/mirasense/scanditsdk/twod/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/mirasense/scanditsdk/twod/common/PerspectiveTransform;

    move-result-object v0

    .line 42
    .local v0, transform:Lcom/mirasense/scanditsdk/twod/common/PerspectiveTransform;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mirasense/scanditsdk/twod/common/DefaultGridSampler;->sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;IILcom/mirasense/scanditsdk/twod/common/PerspectiveTransform;)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;IILcom/mirasense/scanditsdk/twod/common/PerspectiveTransform;)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .locals 10
    .parameter "image"
    .parameter "dimensionX"
    .parameter "dimensionY"
    .parameter "transform"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f00

    .line 49
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 50
    :cond_0
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v7

    throw v7

    .line 52
    :cond_1
    new-instance v1, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-direct {v1, p2, p3}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;-><init>(II)V

    .line 53
    .local v1, bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    shl-int/lit8 v7, p2, 0x1

    new-array v4, v7, [F

    .line 54
    .local v4, points:[F
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    if-ge v6, p3, :cond_5

    .line 55
    array-length v3, v4

    .line 56
    .local v3, max:I
    int-to-float v7, v6

    add-float v2, v7, v9

    .line 57
    .local v2, iValue:F
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 58
    shr-int/lit8 v7, v5, 0x1

    int-to-float v7, v7

    add-float/2addr v7, v9

    aput v7, v4, v5

    .line 59
    add-int/lit8 v7, v5, 0x1

    aput v2, v4, v7

    .line 57
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p4, v4}, Lcom/mirasense/scanditsdk/twod/common/PerspectiveTransform;->transformPoints([F)V

    .line 64
    invoke-static {p1, v4}, Lcom/mirasense/scanditsdk/twod/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;[F)V

    .line 66
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_4

    .line 67
    :try_start_0
    aget v7, v4, v5

    float-to-int v7, v7

    add-int/lit8 v8, v5, 0x1

    aget v8, v4, v8

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    shr-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7, v6}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 72
    :catch_0
    move-exception v0

    .line 80
    .local v0, aioobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v7

    throw v7

    .line 54
    .end local v0           #aioobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    .end local v2           #iValue:F
    .end local v3           #max:I
    .end local v5           #x:I
    :cond_5
    return-object v1
.end method
