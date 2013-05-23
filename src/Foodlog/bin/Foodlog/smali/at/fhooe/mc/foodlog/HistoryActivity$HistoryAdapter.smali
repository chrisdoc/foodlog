.class public Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/mc/foodlog/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lat/fhooe/mc/foodlog/model/Diary;",
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
            "Lat/fhooe/mc/foodlog/model/Diary;",
            ">;"
        }
    .end annotation
.end field

.field public imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutResourceId:I

.field final synthetic this$0:Lat/fhooe/mc/foodlog/HistoryActivity;


# direct methods
.method public constructor <init>(Lat/fhooe/mc/foodlog/HistoryActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
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
            "Lat/fhooe/mc/foodlog/model/Diary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p4, diary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/Diary;>;"
    iput-object p1, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    .line 174
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 175
    iput p3, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->layoutResourceId:I

    .line 176
    iput-object p2, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->context:Landroid/content/Context;

    .line 177
    iput-object p4, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->data:Ljava/util/ArrayList;

    .line 180
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 179
    iput-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 181
    new-instance v0, Lcom/fedorvlasov/lazylist/ImageLoader;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fedorvlasov/lazylist/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

    .line 183
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 188
    move-object v6, p2

    .line 191
    .local v6, vi:Landroid/view/View;
    if-nez p2, :cond_0

    .line 192
    iget-object v7, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->layoutResourceId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 194
    :cond_0
    const v7, 0x7f0c0025

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 195
    .local v5, name:Landroid/widget/TextView;
    const v7, 0x7f0c0026

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 197
    .local v1, date:Landroid/widget/TextView;
    const v7, 0x7f0c0024

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 200
    .local v3, image:Landroid/widget/ImageView;
    iget-object v7, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lat/fhooe/mc/foodlog/model/Diary;

    .line 201
    .local v4, item:Lat/fhooe/mc/foodlog/model/Diary;
    if-eqz v4, :cond_1

    .line 203
    :try_start_0
    invoke-virtual {v4}, Lat/fhooe/mc/foodlog/model/Diary;->getItem()Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v7

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Item;->getDescription()Lat/fhooe/mc/foodlog/model/FoodDescription;

    move-result-object v7

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/FoodDescription;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v4}, Lat/fhooe/mc/foodlog/model/Diary;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    iget-object v7, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

    invoke-virtual {v4}, Lat/fhooe/mc/foodlog/model/Diary;->getItem()Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v8

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getThumbsrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/fedorvlasov/lazylist/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, color:I
    invoke-virtual {v4}, Lat/fhooe/mc/foodlog/model/Diary;->getMealtime()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 226
    iget-object v7, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    const v8, 0x7f060003

    invoke-virtual {v7, v8}, Lat/fhooe/mc/foodlog/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 230
    :goto_1
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    .end local v0           #color:I
    :cond_1
    return-object v6

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "kieslich"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #color:I
    :pswitch_0
    iget-object v7, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    const v8, 0x7f060005

    invoke-virtual {v7, v8}, Lat/fhooe/mc/foodlog/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 215
    goto :goto_1

    .line 218
    :pswitch_1
    iget-object v7, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    const v8, 0x7f060006

    invoke-virtual {v7, v8}, Lat/fhooe/mc/foodlog/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 219
    goto :goto_1

    .line 222
    :pswitch_2
    iget-object v7, p0, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Lat/fhooe/mc/foodlog/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 223
    goto :goto_1

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
