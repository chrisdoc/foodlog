.class Lat/fhooe/mc/foodlog/LookupActivity$3;
.super Ljava/lang/Object;
.source "LookupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/mc/foodlog/LookupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/mc/foodlog/LookupActivity;


# direct methods
.method constructor <init>(Lat/fhooe/mc/foodlog/LookupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lat/fhooe/mc/foodlog/LookupActivity$3;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity$3;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    #calls: Lat/fhooe/mc/foodlog/LookupActivity;->scanProduct()V
    invoke-static {v0}, Lat/fhooe/mc/foodlog/LookupActivity;->access$1(Lat/fhooe/mc/foodlog/LookupActivity;)V

    .line 128
    return-void
.end method
