.class public Lorg/simpleframework/xml/core/AttributeException;
.super Lorg/simpleframework/xml/core/PersistenceException;
.source "AttributeException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "text"
    .parameter "list"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "cause"
    .parameter "text"
    .parameter "list"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method
