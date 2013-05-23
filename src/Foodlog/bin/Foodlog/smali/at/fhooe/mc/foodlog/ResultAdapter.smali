.class public Lat/fhooe/mc/foodlog/ResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lat/fhooe/mc/foodlog/model/Item;",
        ">;"
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field context:Landroid/content/Context;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field public imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

.field layoutResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lat/fhooe/mc/foodlog/ResultAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
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
            "Lat/fhooe/mc/foodlog/model/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/Item;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/mc/foodlog/ResultAdapter;->data:Ljava/util/ArrayList;

    .line 28
    iput p2, p0, Lat/fhooe/mc/foodlog/ResultAdapter;->layoutResourceId:I

    .line 29
    iput-object p1, p0, Lat/fhooe/mc/foodlog/ResultAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lat/fhooe/mc/foodlog/ResultAdapter;->data:Ljava/util/ArrayList;

    .line 32
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lat/fhooe/mc/foodlog/ResultAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    new-instance v0, Lcom/fedorvlasov/lazylist/ImageLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fedorvlasov/lazylist/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/ResultAdapter;->imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    move-object v4, p2

    .line 40
    .local v4, vi:Landroid/view/View;
    if-nez p2, :cond_0

    .line 41
    sget-object v5, Lat/fhooe/mc/foodlog/ResultAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 43
    :cond_0
    const v5, 0x7f0c0031

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, title:Landroid/widget/TextView;
    const v5, 0x7f0c0032

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, subtitle:Landroid/widget/TextView;
    const v5, 0x7f0c0030

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/ImageView;

    .line 49
    .local v2, thumb_image:Landroid/widget/ImageView;
    iget-object v5, p0, Lat/fhooe/mc/foodlog/ResultAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/mc/foodlog/model/Item;

    .line 50
    .local v0, item:Lat/fhooe/mc/foodlog/model/Item;
    iget-object v5, p0, Lat/fhooe/mc/foodlog/ResultAdapter;->imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/Item;->getThumbsrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/fedorvlasov/lazylist/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 52
    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/Item;->getDescription()Lat/fhooe/mc/foodlog/model/FoodDescription;

    move-result-object v5

    invoke-virtual {v5}, Lat/fhooe/mc/foodlog/model/FoodDescription;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/Item;->getDescription()Lat/fhooe/mc/foodlog/model/FoodDescription;

    move-result-object v5

    invoke-virtual {v5}, Lat/fhooe/mc/foodlog/model/FoodDescription;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-object v4
.end method
