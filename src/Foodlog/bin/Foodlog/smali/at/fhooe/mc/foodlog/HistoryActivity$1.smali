.class Lat/fhooe/mc/foodlog/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/mc/foodlog/HistoryActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lat/fhooe/mc/foodlog/HistoryActivity;


# direct methods
.method constructor <init>(Lat/fhooe/mc/foodlog/HistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lat/fhooe/mc/foodlog/HistoryActivity$1;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    .line 52
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
    .line 56
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    iget-object v3, p0, Lat/fhooe/mc/foodlog/HistoryActivity$1;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    #getter for: Lat/fhooe/mc/foodlog/HistoryActivity;->diaryGroupAdapter:Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;
    invoke-static {v3}, Lat/fhooe/mc/foodlog/HistoryActivity;->access$0(Lat/fhooe/mc/foodlog/HistoryActivity;)Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lat/fhooe/mc/foodlog/HistoryActivity$1;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    #getter for: Lat/fhooe/mc/foodlog/HistoryActivity;->diaryGroupAdapter:Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;
    invoke-static {v2}, Lat/fhooe/mc/foodlog/HistoryActivity;->access$0(Lat/fhooe/mc/foodlog/HistoryActivity;)Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/mc/foodlog/model/DiaryGroup;

    .line 58
    .local v0, d:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lat/fhooe/mc/foodlog/HistoryActivity$1;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    invoke-virtual {v2}, Lat/fhooe/mc/foodlog/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 59
    const-class v3, Lat/fhooe/mc/foodlog/DiaryDayActivity;

    .line 58
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "diarygroup"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lat/fhooe/mc/foodlog/HistoryActivity$1;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lat/fhooe/mc/foodlog/HistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    .end local v0           #d:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
