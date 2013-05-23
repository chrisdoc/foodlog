.class public Lat/fhooe/mc/foodlog/model/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    strict = false
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37e011fe5095b521L


# instance fields
.field public item:Lat/fhooe/mc/foodlog/model/Item;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Lat/fhooe/mc/foodlog/model/Item;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/Result;->item:Lat/fhooe/mc/foodlog/model/Item;

    return-object v0
.end method

.method public setItem(Lat/fhooe/mc/foodlog/model/Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 32
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/Result;->item:Lat/fhooe/mc/foodlog/model/Item;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Result [item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lat/fhooe/mc/foodlog/model/Result;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
