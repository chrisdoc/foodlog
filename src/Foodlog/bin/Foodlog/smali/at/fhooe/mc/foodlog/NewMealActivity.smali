.class public Lat/fhooe/mc/foodlog/NewMealActivity;
.super Landroid/app/Activity;
.source "NewMealActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/NewMealActivity;->setContentView(I)V

    .line 13
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 18
    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/NewMealActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 19
    const/4 v0, 0x1

    return v0
.end method
