.class public abstract Lcom/mirasense/scanditsdk/twod/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/mirasense/scanditsdk/twod/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/mirasense/scanditsdk/twod/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/twod/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/common/GridSampler;->gridSampler:Lcom/mirasense/scanditsdk/twod/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;[F)V
    .locals 10
    .parameter "image"
    .parameter "points"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 104
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getWidth()I

    move-result v3

    .line 105
    .local v3, width:I
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getHeight()I

    move-result v0

    .line 107
    .local v0, height:I
    const/4 v1, 0x1

    .line 108
    .local v1, nudged:Z
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_6

    if-eqz v1, :cond_6

    .line 109
    aget v6, p1, v2

    float-to-int v4, v6

    .line 110
    .local v4, x:I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 111
    .local v5, y:I
    if-lt v4, v8, :cond_0

    if-gt v4, v3, :cond_0

    if-lt v5, v8, :cond_0

    if-le v5, v0, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v6

    throw v6

    .line 114
    :cond_1
    const/4 v1, 0x0

    .line 115
    if-ne v4, v8, :cond_4

    .line 116
    aput v9, p1, v2

    .line 117
    const/4 v1, 0x1

    .line 122
    :cond_2
    :goto_1
    if-ne v5, v8, :cond_5

    .line 123
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 124
    const/4 v1, 0x1

    .line 108
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 118
    :cond_4
    if-ne v4, v3, :cond_2

    .line 119
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 120
    const/4 v1, 0x1

    goto :goto_1

    .line 125
    :cond_5
    if-ne v5, v0, :cond_3

    .line 126
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 127
    const/4 v1, 0x1

    goto :goto_2

    .line 131
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_6
    const/4 v1, 0x1

    .line 132
    array-length v6, p1

    add-int/lit8 v2, v6, -0x2

    :goto_3
    if-ltz v2, :cond_d

    if-eqz v1, :cond_d

    .line 133
    aget v6, p1, v2

    float-to-int v4, v6

    .line 134
    .restart local v4       #x:I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 135
    .restart local v5       #y:I
    if-lt v4, v8, :cond_7

    if-gt v4, v3, :cond_7

    if-lt v5, v8, :cond_7

    if-le v5, v0, :cond_8

    .line 136
    :cond_7
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v6

    throw v6

    .line 138
    :cond_8
    const/4 v1, 0x0

    .line 139
    if-ne v4, v8, :cond_b

    .line 140
    aput v9, p1, v2

    .line 141
    const/4 v1, 0x1

    .line 146
    :cond_9
    :goto_4
    if-ne v5, v8, :cond_c

    .line 147
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 148
    const/4 v1, 0x1

    .line 132
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    .line 142
    :cond_b
    if-ne v4, v3, :cond_9

    .line 143
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 144
    const/4 v1, 0x1

    goto :goto_4

    .line 149
    :cond_c
    if-ne v5, v0, :cond_a

    .line 150
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 151
    const/4 v1, 0x1

    goto :goto_5

    .line 154
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/mirasense/scanditsdk/twod/common/GridSampler;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/mirasense/scanditsdk/twod/common/GridSampler;->gridSampler:Lcom/mirasense/scanditsdk/twod/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/mirasense/scanditsdk/twod/common/GridSampler;)V
    .locals 1
    .parameter "newGridSampler"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    sput-object p0, Lcom/mirasense/scanditsdk/twod/common/GridSampler;->gridSampler:Lcom/mirasense/scanditsdk/twod/common/GridSampler;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;IILcom/mirasense/scanditsdk/twod/common/PerspectiveTransform;)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation
.end method
