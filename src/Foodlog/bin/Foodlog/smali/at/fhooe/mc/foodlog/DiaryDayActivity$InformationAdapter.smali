.class public Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DiaryDayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/mc/foodlog/DiaryDayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InformationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutResourceId:I

.field final synthetic this$0:Lat/fhooe/mc/foodlog/DiaryDayActivity;


# direct methods
.method public constructor <init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layoutResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p4, nutritions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;>;"
    iput-object p1, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->this$0:Lat/fhooe/mc/foodlog/DiaryDayActivity;

    .line 220
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 221
    iput p3, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->layoutResourceId:I

    .line 222
    iput-object p2, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->context:Landroid/content/Context;

    .line 223
    iput-object p4, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->data:Ljava/util/ArrayList;

    .line 226
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 225
    iput-object v0, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 228
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 233
    move-object v3, p2

    .line 237
    .local v3, vi:Landroid/view/View;
    if-nez p2, :cond_0

    .line 238
    iget-object v5, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->layoutResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 240
    :cond_0
    const v5, 0x7f0c0029

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    .local v1, name:Landroid/widget/TextView;
    const v5, 0x7f0c002a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 243
    .local v2, value:Landroid/widget/TextView;
    const v5, 0x7f0c0028

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 246
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;

    .line 248
    .local v0, item:Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->getTilte()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    return-object v3
.end method
