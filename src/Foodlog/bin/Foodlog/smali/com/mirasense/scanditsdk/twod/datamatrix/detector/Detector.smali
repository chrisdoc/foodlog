.class public final Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$1;,
        Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# static fields
.field private static final INTEGERS:[Ljava/lang/Integer;


# instance fields
.field private final image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

.field private final rectangleDetector:Lcom/mirasense/scanditsdk/twod/common/detector/WhiteRectangleDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)V
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 51
    new-instance v0, Lcom/mirasense/scanditsdk/twod/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/mirasense/scanditsdk/twod/common/detector/WhiteRectangleDetector;-><init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->rectangleDetector:Lcom/mirasense/scanditsdk/twod/common/detector/WhiteRectangleDetector;

    .line 52
    return-void
.end method

.method private correctTopRight(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;I)Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .locals 12
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "dimension"

    .prologue
    .line 273
    invoke-static {p1, p2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v9

    int-to-float v9, v9

    move/from16 v0, p5

    int-to-float v10, v0

    div-float v3, v9, v10

    .line 274
    .local v3, corr:F
    invoke-static/range {p3 .. p4}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v7

    .line 275
    .local v7, norm:I
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p3}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v4, v9, v10

    .line 276
    .local v4, cos:F
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p3}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 278
    .local v8, sin:F
    new-instance v1, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    mul-float v10, v3, v4

    add-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    invoke-direct {v1, v9, v10}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    .line 280
    .local v1, c1:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-static {p1, p2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v9

    int-to-float v9, v9

    move/from16 v0, p5

    int-to-float v10, v0

    div-float v3, v9, v10

    .line 281
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v7

    .line 282
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v4, v9, v10

    .line 283
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 285
    new-instance v2, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    mul-float v10, v3, v4

    add-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    invoke-direct {v2, v9, v10}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    .line 287
    .local v2, c2:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->isValid(Lcom/mirasense/scanditsdk/twod/ResultPoint;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 288
    invoke-direct {p0, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->isValid(Lcom/mirasense/scanditsdk/twod/ResultPoint;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v1, v2

    .line 301
    .end local v1           #c1:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :cond_0
    :goto_0
    return-object v1

    .line 291
    .restart local v1       #c1:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    :cond_2
    invoke-direct {p0, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->isValid(Lcom/mirasense/scanditsdk/twod/ResultPoint;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 296
    invoke-direct {p0, p3, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    invoke-direct {p0, p2, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 298
    .local v5, l1:I
    invoke-direct {p0, p3, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    invoke-direct {p0, p2, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 301
    .local v6, l2:I
    if-le v5, v6, :cond_0

    move-object v1, v2

    goto :goto_0
.end method

.method private correctTopRightRectangular(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;II)Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .locals 12
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "dimensionTop"
    .parameter "dimensionRight"

    .prologue
    .line 228
    invoke-static {p1, p2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v9

    int-to-float v9, v9

    move/from16 v0, p5

    int-to-float v10, v0

    div-float v3, v9, v10

    .line 229
    .local v3, corr:F
    invoke-static/range {p3 .. p4}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v7

    .line 230
    .local v7, norm:I
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p3}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v4, v9, v10

    .line 231
    .local v4, cos:F
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p3}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 233
    .local v8, sin:F
    new-instance v1, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    mul-float v10, v3, v4

    add-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    invoke-direct {v1, v9, v10}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    .line 235
    .local v1, c1:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-static {p1, p3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v9

    int-to-float v9, v9

    move/from16 v0, p6

    int-to-float v10, v0

    div-float v3, v9, v10

    .line 236
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I

    move-result v7

    .line 237
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v4, v9, v10

    .line 238
    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 240
    new-instance v2, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v9

    mul-float v10, v3, v4

    add-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    invoke-direct {v2, v9, v10}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    .line 242
    .local v2, c2:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->isValid(Lcom/mirasense/scanditsdk/twod/ResultPoint;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 243
    invoke-direct {p0, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->isValid(Lcom/mirasense/scanditsdk/twod/ResultPoint;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 260
    .end local v2           #c2:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :cond_0
    :goto_0
    return-object v2

    .line 246
    .restart local v2       #c2:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 247
    :cond_2
    invoke-direct {p0, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->isValid(Lcom/mirasense/scanditsdk/twod/ResultPoint;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v2, v1

    .line 248
    goto :goto_0

    .line 251
    :cond_3
    invoke-direct {p0, p3, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    sub-int v9, p5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-direct {p0, p2, v1}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v10

    sub-int v10, p6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int v5, v9, v10

    .line 253
    .local v5, l1:I
    invoke-direct {p0, p3, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    sub-int v9, p5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-direct {p0, p2, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v10

    sub-int v10, p6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int v6, v9, v10

    .line 256
    .local v6, l2:I
    if-gt v5, v6, :cond_0

    move-object v2, v1

    .line 257
    goto :goto_0
.end method

.method private static distance(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->round(F)I

    move-result v0

    return v0
.end method

.method private static increment(Ljava/util/Hashtable;Lcom/mirasense/scanditsdk/twod/ResultPoint;)V
    .locals 3
    .parameter "table"
    .parameter "key"

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 328
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    sget-object v1, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void

    .line 328
    :cond_0
    sget-object v1, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method private isValid(Lcom/mirasense/scanditsdk/twod/ResultPoint;)Z
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    iget v1, v1, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->width:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    iget v1, v1, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->height:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static round(F)I
    .locals 1
    .parameter "d"

    .prologue
    .line 313
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;II)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .locals 21
    .parameter "image"
    .parameter "topLeft"
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "topRight"
    .parameter "dimensionX"
    .parameter "dimensionY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/common/GridSampler;->getInstance()Lcom/mirasense/scanditsdk/twod/common/GridSampler;

    move-result-object v1

    .line 341
    .local v1, sampler:Lcom/mirasense/scanditsdk/twod/common/GridSampler;
    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v7, v2, v3

    const/high16 v8, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v9, v2, v3

    move/from16 v0, p6

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v10, v2, v3

    const/high16 v11, 0x3f00

    move/from16 v0, p6

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v12, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p3 .. p3}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v20}, Lcom/mirasense/scanditsdk/twod/common/GridSampler;->sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 23
    .parameter "from"
    .parameter "to"

    .prologue
    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    .line 368
    .local v7, fromX:I
    invoke-virtual/range {p1 .. p1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 369
    .local v8, fromY:I
    invoke-virtual/range {p2 .. p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 370
    .local v13, toX:I
    invoke-virtual/range {p2 .. p2}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 371
    .local v14, toY:I
    sub-int v20, v14, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    sub-int v21, v13, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/4 v11, 0x1

    .line 372
    .local v11, steep:Z
    :goto_0
    if-eqz v11, :cond_0

    .line 373
    move v12, v7

    .line 374
    .local v12, temp:I
    move v7, v8

    .line 375
    move v8, v12

    .line 376
    move v12, v13

    .line 377
    move v13, v14

    .line 378
    move v14, v12

    .line 381
    .end local v12           #temp:I
    :cond_0
    sub-int v20, v13, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 382
    .local v4, dx:I
    sub-int v20, v14, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 383
    .local v5, dy:I
    neg-int v0, v4

    move/from16 v20, v0

    shr-int/lit8 v6, v20, 0x1

    .line 384
    .local v6, error:I
    if-ge v8, v14, :cond_4

    const/16 v19, 0x1

    .line 385
    .local v19, ystep:I
    :goto_1
    if-ge v7, v13, :cond_5

    const/16 v17, 0x1

    .line 386
    .local v17, xstep:I
    :goto_2
    const/4 v15, 0x0

    .line 387
    .local v15, transitions:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-object/from16 v22, v0

    if-eqz v11, :cond_6

    move/from16 v21, v8

    :goto_3
    if-eqz v11, :cond_7

    move/from16 v20, v7

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v9

    .line 388
    .local v9, inBlack:Z
    move/from16 v16, v7

    .local v16, x:I
    move/from16 v18, v8

    .local v18, y:I
    :goto_5
    move/from16 v0, v16

    if-eq v0, v13, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-object/from16 v22, v0

    if-eqz v11, :cond_8

    move/from16 v21, v18

    :goto_6
    if-eqz v11, :cond_9

    move/from16 v20, v16

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v10

    .line 390
    .local v10, isBlack:Z
    if-eq v10, v9, :cond_1

    .line 391
    add-int/lit8 v15, v15, 0x1

    .line 392
    move v9, v10

    .line 394
    :cond_1
    add-int/2addr v6, v5

    .line 395
    if-lez v6, :cond_b

    .line 396
    move/from16 v0, v18

    if-ne v0, v14, :cond_a

    .line 403
    .end local v10           #isBlack:Z
    :cond_2
    new-instance v20, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;ILcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$1;)V

    return-object v20

    .line 371
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v6           #error:I
    .end local v9           #inBlack:Z
    .end local v11           #steep:Z
    .end local v15           #transitions:I
    .end local v16           #x:I
    .end local v17           #xstep:I
    .end local v18           #y:I
    .end local v19           #ystep:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 384
    .restart local v4       #dx:I
    .restart local v5       #dy:I
    .restart local v6       #error:I
    .restart local v11       #steep:Z
    :cond_4
    const/16 v19, -0x1

    goto :goto_1

    .line 385
    .restart local v19       #ystep:I
    :cond_5
    const/16 v17, -0x1

    goto :goto_2

    .restart local v15       #transitions:I
    .restart local v17       #xstep:I
    :cond_6
    move/from16 v21, v7

    .line 387
    goto :goto_3

    :cond_7
    move/from16 v20, v8

    goto :goto_4

    .restart local v9       #inBlack:Z
    .restart local v16       #x:I
    .restart local v18       #y:I
    :cond_8
    move/from16 v21, v16

    .line 389
    goto :goto_6

    :cond_9
    move/from16 v20, v18

    goto :goto_7

    .line 399
    .restart local v10       #isBlack:Z
    :cond_a
    add-int v18, v18, v19

    .line 400
    sub-int/2addr v6, v4

    .line 388
    :cond_b
    add-int v16, v16, v17

    goto :goto_5
.end method


# virtual methods
.method public detect()Lcom/mirasense/scanditsdk/twod/common/DetectorResult;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->rectangleDetector:Lcom/mirasense/scanditsdk/twod/common/detector/WhiteRectangleDetector;

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/common/detector/WhiteRectangleDetector;->detect()[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v22

    .line 63
    .local v22, cornerPoints:[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    const/4 v3, 0x0

    aget-object v29, v22, v3

    .line 64
    .local v29, pointA:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    const/4 v3, 0x1

    aget-object v30, v22, v3

    .line 65
    .local v30, pointB:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    const/4 v3, 0x2

    aget-object v31, v22, v3

    .line 66
    .local v31, pointC:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    const/4 v3, 0x3

    aget-object v33, v22, v3

    .line 71
    .local v33, pointD:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    new-instance v35, Ljava/util/Vector;

    const/4 v3, 0x4

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    .line 72
    .local v35, transitions:Ljava/util/Vector;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    new-instance v3, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$1;)V

    move-object/from16 v0, v35

    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/common/Collections;->insertionSort(Ljava/util/Vector;Lcom/mirasense/scanditsdk/twod/common/Comparator;)V

    .line 80
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 81
    .local v24, lSideOne:Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 85
    .local v25, lSideTwo:Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;
    new-instance v32, Ljava/util/Hashtable;

    invoke-direct/range {v32 .. v32}, Ljava/util/Hashtable;-><init>()V

    .line 86
    .local v32, pointCount:Ljava/util/Hashtable;
    invoke-virtual/range {v24 .. v24}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/mirasense/scanditsdk/twod/ResultPoint;)V

    .line 87
    invoke-virtual/range {v24 .. v24}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/mirasense/scanditsdk/twod/ResultPoint;)V

    .line 88
    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/mirasense/scanditsdk/twod/ResultPoint;)V

    .line 89
    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v0, v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/mirasense/scanditsdk/twod/ResultPoint;)V

    .line 91
    const/16 v27, 0x0

    .line 92
    .local v27, maybeTopLeft:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    const/4 v4, 0x0

    .line 93
    .local v4, bottomLeft:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    const/16 v26, 0x0

    .line 94
    .local v26, maybeBottomRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-virtual/range {v32 .. v32}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v34

    .line 95
    .local v34, points:Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v34 .. v34}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-interface/range {v34 .. v34}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    .line 97
    .local v28, point:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    .line 98
    .local v36, value:Ljava/lang/Integer;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v10, 0x2

    if-ne v3, v10, :cond_0

    .line 99
    move-object/from16 v4, v28

    goto :goto_0

    .line 102
    :cond_0
    if-nez v27, :cond_1

    .line 103
    move-object/from16 v27, v28

    goto :goto_0

    .line 105
    :cond_1
    move-object/from16 v26, v28

    goto :goto_0

    .line 110
    .end local v28           #point:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .end local v36           #value:Ljava/lang/Integer;
    :cond_2
    if-eqz v27, :cond_3

    if-eqz v4, :cond_3

    if-nez v26, :cond_4

    .line 111
    :cond_3
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v3

    throw v3

    .line 115
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    aput-object v27, v23, v3

    const/4 v3, 0x1

    aput-object v4, v23, v3

    const/4 v3, 0x2

    aput-object v26, v23, v3

    .line 117
    .local v23, corners:[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-static/range {v23 .. v23}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->orderBestPatterns([Lcom/mirasense/scanditsdk/twod/ResultPoint;)V

    .line 120
    const/4 v3, 0x0

    aget-object v5, v23, v3

    .line 121
    .local v5, bottomRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    const/4 v3, 0x1

    aget-object v4, v23, v3

    .line 122
    const/4 v3, 0x2

    aget-object v6, v23, v3

    .line 126
    .local v6, topLeft:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 127
    move-object/from16 v7, v29

    .line 145
    .local v7, topRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v8

    .line 146
    .local v8, dimensionTop:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    .line 148
    .local v9, dimensionRight:I
    and-int/lit8 v3, v8, 0x1

    const/4 v10, 0x1

    if-ne v3, v10, :cond_5

    .line 150
    add-int/lit8 v8, v8, 0x1

    .line 152
    :cond_5
    add-int/lit8 v8, v8, 0x2

    .line 154
    and-int/lit8 v3, v9, 0x1

    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    .line 156
    add-int/lit8 v9, v9, 0x1

    .line 158
    :cond_6
    add-int/lit8 v9, v9, 0x2

    .line 166
    mul-int/lit8 v3, v8, 0x4

    mul-int/lit8 v10, v9, 0x7

    if-ge v3, v10, :cond_7

    mul-int/lit8 v3, v9, 0x4

    mul-int/lit8 v10, v8, 0x7

    if-lt v3, v10, :cond_e

    :cond_7
    move-object/from16 v3, p0

    .line 169
    invoke-direct/range {v3 .. v9}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->correctTopRightRectangular(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;II)Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v14

    .line 171
    .local v14, correctedTopRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    if-nez v14, :cond_8

    .line 172
    move-object v14, v7

    .line 175
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v8

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    .line 178
    and-int/lit8 v3, v8, 0x1

    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    .line 180
    add-int/lit8 v8, v8, 0x1

    .line 183
    :cond_9
    and-int/lit8 v3, v9, 0x1

    const/4 v10, 0x1

    if-ne v3, v10, :cond_a

    .line 185
    add-int/lit8 v9, v9, 0x1

    .line 188
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-object v11, v6

    move-object v12, v4

    move-object v13, v5

    move v15, v8

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;II)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v21

    .line 217
    .local v21, bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    :goto_2
    new-instance v3, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/mirasense/scanditsdk/twod/ResultPoint;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v11, 0x2

    aput-object v5, v10, v11

    const/4 v11, 0x3

    aput-object v14, v10, v11

    move-object/from16 v0, v21

    invoke-direct {v3, v0, v10}, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;-><init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;[Lcom/mirasense/scanditsdk/twod/ResultPoint;)V

    return-object v3

    .line 128
    .end local v7           #topRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .end local v8           #dimensionTop:I
    .end local v9           #dimensionRight:I
    .end local v14           #correctedTopRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .end local v21           #bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    :cond_b
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 129
    move-object/from16 v7, v30

    .restart local v7       #topRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    goto/16 :goto_1

    .line 130
    .end local v7           #topRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :cond_c
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 131
    move-object/from16 v7, v31

    .restart local v7       #topRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    goto/16 :goto_1

    .line 133
    .end local v7           #topRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :cond_d
    move-object/from16 v7, v33

    .restart local v7       #topRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    goto/16 :goto_1

    .line 193
    .restart local v8       #dimensionTop:I
    .restart local v9       #dimensionRight:I
    :cond_e
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v20

    .local v20, dimension:I
    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 195
    invoke-direct/range {v15 .. v20}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->correctTopRight(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;I)Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v14

    .line 196
    .restart local v14       #correctedTopRight:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    if-nez v14, :cond_f

    .line 197
    move-object v14, v7

    .line 201
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->transitionsBetween(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;)Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 203
    .local v15, dimensionCorrected:I
    add-int/lit8 v15, v15, 0x1

    .line 204
    and-int/lit8 v3, v15, 0x1

    const/4 v10, 0x1

    if-ne v3, v10, :cond_10

    .line 205
    add-int/lit8 v15, v15, 0x1

    .line 208
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-object v11, v6

    move-object v12, v4

    move-object v13, v5

    move/from16 v16, v15

    invoke-static/range {v10 .. v16}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;->sampleGrid(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;II)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    move-result-object v21

    .restart local v21       #bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    goto :goto_2
.end method
