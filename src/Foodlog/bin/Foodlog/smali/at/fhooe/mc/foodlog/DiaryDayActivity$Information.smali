.class public Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
.super Ljava/lang/Object;
.source "DiaryDayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/mc/foodlog/DiaryDayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Information"
.end annotation


# instance fields
.field color:I

.field subtitle:Ljava/lang/String;

.field final synthetic this$0:Lat/fhooe/mc/foodlog/DiaryDayActivity;

.field tilte:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->this$0:Lat/fhooe/mc/foodlog/DiaryDayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->color:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTilte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->tilte:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 208
    iput p1, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->color:I

    .line 209
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 202
    iput-object p1, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->subtitle:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setTilte(Ljava/lang/String;)V
    .locals 0
    .parameter "tilte"

    .prologue
    .line 196
    iput-object p1, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->tilte:Ljava/lang/String;

    .line 197
    return-void
.end method
