.class public Lat/fhooe/mc/foodlog/model/FoodDescription;
.super Ljava/lang/Object;
.source "FoodDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    strict = false
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x379b48b4aa0a8408L


# instance fields
.field group:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field imagedescription:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field option:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field producer:Ljava/lang/String;
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
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getImagedescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->imagedescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->option:Ljava/lang/String;

    return-object v0
.end method

.method public getProducer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->producer:Ljava/lang/String;

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 46
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->group:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setImagedescription(Ljava/lang/String;)V
    .locals 0
    .parameter "imagedescription"

    .prologue
    .line 52
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->imagedescription:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 28
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 0
    .parameter "option"

    .prologue
    .line 34
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->option:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setProducer(Ljava/lang/String;)V
    .locals 0
    .parameter "producer"

    .prologue
    .line 40
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->producer:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "FoodDescription [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lat/fhooe/mc/foodlog/model/FoodDescription;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
