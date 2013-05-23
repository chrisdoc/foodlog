.class Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$2;
.super Ljava/lang/Object;
.source "ScanditSDKOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->showSearchBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;


# direct methods
.method constructor <init>(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$2;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$2;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #calls: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->onSearchClicked()V
    invoke-static {v0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$300(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V

    .line 208
    return-void
.end method
