.class Lat/fhooe/mc/foodlog/LookupActivity$2;
.super Ljava/lang/Object;
.source "LookupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/mc/foodlog/LookupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/mc/foodlog/LookupActivity;


# direct methods
.method constructor <init>(Lat/fhooe/mc/foodlog/LookupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lat/fhooe/mc/foodlog/LookupActivity$2;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lat/fhooe/mc/foodlog/LookupActivity$2;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    iget-object v2, v2, Lat/fhooe/mc/foodlog/LookupActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/fhooe/mc/foodlog/model/Item;

    .line 114
    .local v1, item:Lat/fhooe/mc/foodlog/model/Item;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lat/fhooe/mc/foodlog/LookupActivity$2;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    invoke-virtual {v2}, Lat/fhooe/mc/foodlog/LookupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 115
    const-class v3, Lat/fhooe/mc/foodlog/SearchDetailActivity;

    .line 114
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lat/fhooe/mc/foodlog/LookupActivity$2;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lat/fhooe/mc/foodlog/LookupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    return-void
.end method
