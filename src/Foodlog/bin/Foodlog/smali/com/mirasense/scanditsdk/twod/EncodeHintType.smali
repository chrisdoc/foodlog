.class public final Lcom/mirasense/scanditsdk/twod/EncodeHintType;
.super Ljava/lang/Object;
.source "EncodeHintType.java"


# static fields
.field public static final CHARACTER_SET:Lcom/mirasense/scanditsdk/twod/EncodeHintType;

.field public static final ERROR_CORRECTION:Lcom/mirasense/scanditsdk/twod/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/mirasense/scanditsdk/twod/EncodeHintType;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/twod/EncodeHintType;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/EncodeHintType;->ERROR_CORRECTION:Lcom/mirasense/scanditsdk/twod/EncodeHintType;

    .line 34
    new-instance v0, Lcom/mirasense/scanditsdk/twod/EncodeHintType;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/twod/EncodeHintType;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/EncodeHintType;->CHARACTER_SET:Lcom/mirasense/scanditsdk/twod/EncodeHintType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method
