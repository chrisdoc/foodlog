.class Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultPointsAndTransitions"
.end annotation


# instance fields
.field private final from:Lcom/mirasense/scanditsdk/twod/ResultPoint;

.field private final to:Lcom/mirasense/scanditsdk/twod/ResultPoint;

.field private final transitions:I


# direct methods
.method private constructor <init>(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;I)V
    .locals 0
    .parameter "from"
    .parameter "to"
    .parameter "transitions"

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/mirasense/scanditsdk/twod/ResultPoint;

    .line 415
    iput-object p2, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/mirasense/scanditsdk/twod/ResultPoint;

    .line 416
    iput p3, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    .line 417
    return-void
.end method

.method synthetic constructor <init>(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;ILcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/mirasense/scanditsdk/twod/ResultPoint;Lcom/mirasense/scanditsdk/twod/ResultPoint;I)V

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/mirasense/scanditsdk/twod/ResultPoint;

    return-object v0
.end method

.method public getTo()Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/mirasense/scanditsdk/twod/ResultPoint;

    return-object v0
.end method

.method public getTransitions()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/mirasense/scanditsdk/twod/ResultPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/mirasense/scanditsdk/twod/ResultPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mirasense/scanditsdk/twod/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
