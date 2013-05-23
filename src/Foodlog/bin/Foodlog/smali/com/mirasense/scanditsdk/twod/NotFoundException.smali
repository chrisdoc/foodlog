.class public final Lcom/mirasense/scanditsdk/twod/NotFoundException;
.super Lcom/mirasense/scanditsdk/twod/ReaderException;
.source "NotFoundException.java"


# static fields
.field private static final instance:Lcom/mirasense/scanditsdk/twod/NotFoundException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/mirasense/scanditsdk/twod/NotFoundException;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/twod/NotFoundException;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/NotFoundException;->instance:Lcom/mirasense/scanditsdk/twod/NotFoundException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/twod/ReaderException;-><init>()V

    .line 31
    return-void
.end method

.method public static getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mirasense/scanditsdk/twod/NotFoundException;->instance:Lcom/mirasense/scanditsdk/twod/NotFoundException;

    return-object v0
.end method
