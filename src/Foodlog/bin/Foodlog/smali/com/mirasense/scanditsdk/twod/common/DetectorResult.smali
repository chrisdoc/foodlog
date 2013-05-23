.class public Lcom/mirasense/scanditsdk/twod/common/DetectorResult;
.super Ljava/lang/Object;
.source "DetectorResult.java"


# instance fields
.field private final bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

.field private final points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;


# direct methods
.method public constructor <init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;[Lcom/mirasense/scanditsdk/twod/ResultPoint;)V
    .locals 0
    .parameter "bits"
    .parameter "points"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;->bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 35
    iput-object p2, p0, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;->points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    .line 36
    return-void
.end method


# virtual methods
.method public getBits()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;->bits:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    return-object v0
.end method

.method public getPoints()[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/common/DetectorResult;->points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    return-object v0
.end method
