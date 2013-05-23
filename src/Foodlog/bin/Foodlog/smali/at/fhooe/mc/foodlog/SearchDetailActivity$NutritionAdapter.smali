.class public Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/mc/foodlog/SearchDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NutritionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;",
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
            "Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutResourceId:I

.field final synthetic this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;


# direct methods
.method public constructor <init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p4, nutritions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;>;"
    iput-object p1, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

    .line 337
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 338
    iput p3, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->layoutResourceId:I

    .line 339
    iput-object p2, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->context:Landroid/content/Context;

    .line 340
    iput-object p4, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->data:Ljava/util/ArrayList;

    .line 343
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 342
    iput-object v0, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 345
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 350
    move-object v3, p2

    .line 353
    .local v3, vi:Landroid/view/View;
    if-nez p2, :cond_0

    .line 354
    iget-object v5, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 356
    :cond_0
    const v5, 0x7f0c002d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 357
    .local v1, name:Landroid/widget/TextView;
    const v5, 0x7f0c002e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 359
    .local v2, value:Landroid/widget/TextView;
    const v5, 0x7f0c002c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 362
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;

    .line 364
    .local v0, item:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    iget-object v5, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const-string v5, "%.2f gram"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->value:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget v5, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;->color:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 368
    return-object v3
.end method
