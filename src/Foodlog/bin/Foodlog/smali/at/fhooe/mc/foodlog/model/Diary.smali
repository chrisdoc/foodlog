.class public Lat/fhooe/mc/foodlog/model/Diary;
.super Ljava/lang/Object;
.source "Diary.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3bcc27161e61bb10L


# instance fields
.field amount:I

.field date:Ljava/util/Date;

.field food_id:J

.field item:Lat/fhooe/mc/foodlog/model/Item;

.field mealtime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lat/fhooe/mc/foodlog/model/Diary;->amount:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/Diary;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getFood_id()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/Diary;->food_id:J

    return-wide v0
.end method

.method public getItem()Lat/fhooe/mc/foodlog/model/Item;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/Diary;->item:Lat/fhooe/mc/foodlog/model/Item;

    return-object v0
.end method

.method public getMealtime()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lat/fhooe/mc/foodlog/model/Diary;->mealtime:I

    return v0
.end method

.method public setAmount(I)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 44
    iput p1, p0, Lat/fhooe/mc/foodlog/model/Diary;->amount:I

    .line 45
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 32
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/Diary;->date:Ljava/util/Date;

    .line 33
    return-void
.end method

.method public setFood_id(J)V
    .locals 0
    .parameter "food_id"

    .prologue
    .line 26
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/Diary;->food_id:J

    .line 27
    return-void
.end method

.method public setItem(Lat/fhooe/mc/foodlog/model/Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 20
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/Diary;->item:Lat/fhooe/mc/foodlog/model/Item;

    .line 21
    return-void
.end method

.method public setMealtime(I)V
    .locals 0
    .parameter "mealtime"

    .prologue
    .line 38
    iput p1, p0, Lat/fhooe/mc/foodlog/model/Diary;->mealtime:I

    .line 39
    return-void
.end method
