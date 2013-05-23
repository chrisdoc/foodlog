.class public Lat/fhooe/mc/foodlog/FoodLog;
.super Landroid/app/Activity;
.source "FoodLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnHistory:Landroid/widget/Button;

.field private btnLookup:Landroid/widget/Button;

.field private btnNewMeal:Landroid/widget/Button;

.field private btnSettings:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v1, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnHistory:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lat/fhooe/mc/foodlog/HistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lat/fhooe/mc/foodlog/FoodLog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnLookup:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lat/fhooe/mc/foodlog/LookupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v0       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lat/fhooe/mc/foodlog/FoodLog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 54
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnNewMeal:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lat/fhooe/mc/foodlog/NewMealActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .restart local v0       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lat/fhooe/mc/foodlog/FoodLog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 58
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnSettings:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lat/fhooe/mc/foodlog/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .restart local v0       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lat/fhooe/mc/foodlog/FoodLog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/FoodLog;->setContentView(I)V

    .line 22
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/FoodLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnHistory:Landroid/widget/Button;

    .line 23
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/FoodLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnLookup:Landroid/widget/Button;

    .line 24
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/FoodLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnNewMeal:Landroid/widget/Button;

    .line 25
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/FoodLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnSettings:Landroid/widget/Button;

    .line 27
    iget-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnHistory:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnLookup:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnNewMeal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lat/fhooe/mc/foodlog/FoodLog;->btnSettings:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 37
    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/FoodLog;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 38
    const/4 v0, 0x1

    return v0
.end method
