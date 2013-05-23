.class public Lat/fhooe/mc/foodlog/model/PreviouslySearched;
.super Ljava/lang/Object;
.source "PreviouslySearched.java"


# instance fields
.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->name:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->name:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 28
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->id:J

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 21
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->name:Ljava/lang/String;

    return-object v0
.end method
