.class public Lat/fhooe/mc/foodlog/model/ShortSearchResult;
.super Ljava/lang/Object;
.source "ShortSearchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    strict = false
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x27b42c3661726f74L


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lat/fhooe/mc/foodlog/model/Item;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        name = "item"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lat/fhooe/mc/foodlog/model/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/ShortSearchResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lat/fhooe/mc/foodlog/model/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lat/fhooe/mc/foodlog/model/Item;>;"
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/ShortSearchResult;->items:Ljava/util/List;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lat/fhooe/mc/foodlog/model/ShortSearchResult;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 28
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/mc/foodlog/model/Item;

    .line 29
    .local v0, item:Lat/fhooe/mc/foodlog/model/Item;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 30
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
