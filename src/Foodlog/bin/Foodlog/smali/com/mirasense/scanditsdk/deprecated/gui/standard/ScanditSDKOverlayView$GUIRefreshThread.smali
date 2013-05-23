.class public Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;
.super Ljava/lang/Thread;
.source "ScanditSDKOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GUIRefreshThread"
.end annotation


# instance fields
.field private gui:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

.field public running:Z

.field final synthetic this$0:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;


# direct methods
.method public constructor <init>(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;)V
    .locals 0
    .parameter
    .parameter "gui"

    .prologue
    .line 960
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->this$0:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 961
    iput-object p2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->gui:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    .line 962
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 965
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->running:Z

    .line 966
    :goto_0
    iget-boolean v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->running:Z

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->gui:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    if-nez v1, :cond_1

    .line 969
    iput-boolean v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->running:Z

    .line 989
    :cond_0
    return-void

    .line 975
    :cond_1
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->gui:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->gui:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->isExtraGuiRefreshRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 976
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->gui:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v1, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setExtra_gui_refresh_required(Z)V

    .line 977
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->gui:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->postInvalidate()V

    .line 982
    :cond_2
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
