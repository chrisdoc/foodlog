.class Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$4;
.super Ljava/lang/Object;
.source "ScanditSDKOverlayView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 242
    iput-object p1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$4;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 245
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$4;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #calls: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->onSearchClicked()V
    invoke-static {v0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$300(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V

    .line 248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
