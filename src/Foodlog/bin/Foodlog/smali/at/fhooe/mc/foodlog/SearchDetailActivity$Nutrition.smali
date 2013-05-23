.class public Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
.super Ljava/lang/Object;
.source "SearchDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/mc/foodlog/SearchDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Nutrition"
.end annotation


# instance fields
.field color:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

.field value:D


# direct methods
.method public constructor <init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Ljava/lang/String;DI)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "value"
    .parameter "color"

    .prologue
    .line 291
    iput-object p1, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->name:Ljava/lang/String;

    .line 294
    iput p5, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->color:I

    .line 295
    iput-wide p3, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->value:D

    .line 296
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->color:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->value:D

    return-wide v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 315
    iput p1, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->color:I

    .line 316
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 307
    iput-object p1, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->name:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setValue(D)V
    .locals 0
    .parameter "value"

    .prologue
    .line 323
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->value:D

    .line 324
    return-void
.end method
