.class Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1$2;
.super Ljava/lang/Object;
.source "LegacyPortraitScanditSDKBarcodePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;


# direct methods
.method constructor <init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1$2;->this$1:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 241
    return-void
.end method
