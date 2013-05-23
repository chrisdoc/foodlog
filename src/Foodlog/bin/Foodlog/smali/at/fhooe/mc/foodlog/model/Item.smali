.class public Lat/fhooe/mc/foodlog/model/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    strict = false
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x93b9e30686881b7L


# instance fields
.field data:Lat/fhooe/mc/foodlog/model/FoodData;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field description:Lat/fhooe/mc/foodlog/model/FoodDescription;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field foodrank:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field groupid:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field id:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field producerid:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field thumbsrc:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
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
.method public getData()Lat/fhooe/mc/foodlog/model/FoodData;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/Item;->data:Lat/fhooe/mc/foodlog/model/FoodData;

    return-object v0
.end method

.method public getDescription()Lat/fhooe/mc/foodlog/model/FoodDescription;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/Item;->description:Lat/fhooe/mc/foodlog/model/FoodDescription;

    return-object v0
.end method

.method public getFoodrank()D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/Item;->foodrank:D

    return-wide v0
.end method

.method public getGroupid()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lat/fhooe/mc/foodlog/model/Item;->groupid:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lat/fhooe/mc/foodlog/model/Item;->id:I

    return v0
.end method

.method public getProducerid()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lat/fhooe/mc/foodlog/model/Item;->producerid:I

    return v0
.end method

.method public getThumbsrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/Item;->thumbsrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v0

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/FoodData;->getAmount_measuring_system()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, ".*\\("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\).*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public setData(Lat/fhooe/mc/foodlog/model/FoodData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 60
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/Item;->data:Lat/fhooe/mc/foodlog/model/FoodData;

    .line 61
    return-void
.end method

.method public setDescription(Lat/fhooe/mc/foodlog/model/FoodDescription;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 66
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/Item;->description:Lat/fhooe/mc/foodlog/model/FoodDescription;

    .line 67
    return-void
.end method

.method public setFoodrank(D)V
    .locals 0
    .parameter "foodrank"

    .prologue
    .line 39
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/Item;->foodrank:D

    .line 40
    return-void
.end method

.method public setGroupid(I)V
    .locals 0
    .parameter "groupid"

    .prologue
    .line 51
    iput p1, p0, Lat/fhooe/mc/foodlog/model/Item;->groupid:I

    .line 52
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput p1, p0, Lat/fhooe/mc/foodlog/model/Item;->id:I

    .line 34
    return-void
.end method

.method public setProducerid(I)V
    .locals 0
    .parameter "producerid"

    .prologue
    .line 45
    iput p1, p0, Lat/fhooe/mc/foodlog/model/Item;->producerid:I

    .line 46
    return-void
.end method

.method public setThumbsrc(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbsrc"

    .prologue
    .line 69
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/Item;->thumbsrc:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Item [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lat/fhooe/mc/foodlog/model/Item;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lat/fhooe/mc/foodlog/model/Item;->data:Lat/fhooe/mc/foodlog/model/FoodData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lat/fhooe/mc/foodlog/model/Item;->description:Lat/fhooe/mc/foodlog/model/FoodDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
