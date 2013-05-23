.class Lat/fhooe/mc/foodlog/SearchDetailActivity$3;
.super Ljava/lang/Object;
.source "SearchDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/mc/foodlog/SearchDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;


# direct methods
.method constructor <init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$3;->this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$3;->this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

    #calls: Lat/fhooe/mc/foodlog/SearchDetailActivity;->addToDiary()V
    invoke-static {v0}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->access$0(Lat/fhooe/mc/foodlog/SearchDetailActivity;)V

    .line 129
    return-void
.end method
