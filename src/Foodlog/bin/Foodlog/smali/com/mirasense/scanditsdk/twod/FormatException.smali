.class public final Lcom/mirasense/scanditsdk/twod/FormatException;
.super Lcom/mirasense/scanditsdk/twod/ReaderException;
.source "FormatException.java"


# static fields
.field private static final instance:Lcom/mirasense/scanditsdk/twod/FormatException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/mirasense/scanditsdk/twod/FormatException;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/twod/FormatException;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/FormatException;->instance:Lcom/mirasense/scanditsdk/twod/FormatException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/twod/ReaderException;-><init>()V

    .line 32
    return-void
.end method

.method public static getFormatInstance()Lcom/mirasense/scanditsdk/twod/FormatException;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/mirasense/scanditsdk/twod/FormatException;->instance:Lcom/mirasense/scanditsdk/twod/FormatException;

    return-object v0
.end method
