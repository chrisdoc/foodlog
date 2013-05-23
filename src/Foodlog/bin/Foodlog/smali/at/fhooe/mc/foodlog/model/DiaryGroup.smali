.class public Lat/fhooe/mc/foodlog/model/DiaryGroup;
.super Ljava/lang/Object;
.source "DiaryGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x143260bb9d6b6d8fL


# instance fields
.field date:Ljava/util/Date;

.field diaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/Diary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryGroup;->diaries:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public addDiary(Lat/fhooe/mc/foodlog/model/Diary;)V
    .locals 1
    .parameter "diary"

    .prologue
    .line 34
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryGroup;->diaries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryGroup;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDiaries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/Diary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryGroup;->diaries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 22
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/DiaryGroup;->date:Ljava/util/Date;

    .line 23
    return-void
.end method

.method public setDiaries(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/Diary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, diaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/Diary;>;"
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/DiaryGroup;->diaries:Ljava/util/ArrayList;

    .line 31
    return-void
.end method
