.class public abstract Lcom/mirasense/scanditsdk/twod/Binarizer;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field private final source:Lcom/mirasense/scanditsdk/twod/LuminanceSource;


# direct methods
.method protected constructor <init>(Lcom/mirasense/scanditsdk/twod/LuminanceSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/Binarizer;->source:Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    .line 39
    return-void
.end method


# virtual methods
.method public abstract createBinarizer(Lcom/mirasense/scanditsdk/twod/LuminanceSource;)Lcom/mirasense/scanditsdk/twod/Binarizer;
.end method

.method public abstract getBlackMatrix()Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation
.end method

.method public abstract getBlackRow(ILcom/mirasense/scanditsdk/twod/common/BitArray;)Lcom/mirasense/scanditsdk/twod/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation
.end method

.method public getLuminanceSource()Lcom/mirasense/scanditsdk/twod/LuminanceSource;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/Binarizer;->source:Lcom/mirasense/scanditsdk/twod/LuminanceSource;

    return-object v0
.end method
