.class Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fedorvlasov/lazylist/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/fedorvlasov/lazylist/ImageLoader;


# direct methods
.method constructor <init>(Lcom/fedorvlasov/lazylist/ImageLoader;Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;)V
    .locals 0
    .parameter
    .parameter "photoToLoad"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->this$0:Lcom/fedorvlasov/lazylist/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->photoToLoad:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

    .line 142
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->this$0:Lcom/fedorvlasov/lazylist/ImageLoader;

    iget-object v4, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->photoToLoad:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/fedorvlasov/lazylist/ImageLoader;->imageViewReused(Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->this$0:Lcom/fedorvlasov/lazylist/ImageLoader;

    iget-object v4, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->photoToLoad:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    #calls: Lcom/fedorvlasov/lazylist/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/fedorvlasov/lazylist/ImageLoader;->access$0(Lcom/fedorvlasov/lazylist/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .local v1, bmp:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->this$0:Lcom/fedorvlasov/lazylist/ImageLoader;

    iget-object v3, v3, Lcom/fedorvlasov/lazylist/ImageLoader;->memoryCache:Lcom/fedorvlasov/lazylist/MemoryCache;

    iget-object v4, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->photoToLoad:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/fedorvlasov/lazylist/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v3, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->this$0:Lcom/fedorvlasov/lazylist/ImageLoader;

    iget-object v4, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->photoToLoad:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/fedorvlasov/lazylist/ImageLoader;->imageViewReused(Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    new-instance v0, Lcom/fedorvlasov/lazylist/ImageLoader$BitmapDisplayer;

    iget-object v3, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->this$0:Lcom/fedorvlasov/lazylist/ImageLoader;

    iget-object v4, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->photoToLoad:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

    invoke-direct {v0, v3, v1, v4}, Lcom/fedorvlasov/lazylist/ImageLoader$BitmapDisplayer;-><init>(Lcom/fedorvlasov/lazylist/ImageLoader;Landroid/graphics/Bitmap;Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;)V

    .line 154
    .local v0, bd:Lcom/fedorvlasov/lazylist/ImageLoader$BitmapDisplayer;
    iget-object v3, p0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;->this$0:Lcom/fedorvlasov/lazylist/ImageLoader;

    iget-object v3, v3, Lcom/fedorvlasov/lazylist/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v0           #bd:Lcom/fedorvlasov/lazylist/ImageLoader$BitmapDisplayer;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 156
    .local v2, th:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
