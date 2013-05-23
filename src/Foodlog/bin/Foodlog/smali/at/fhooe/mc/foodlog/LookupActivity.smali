.class public Lat/fhooe/mc/foodlog/LookupActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "LookupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;
    }
.end annotation


# static fields
.field private static final SCAN_REQUEST_CODE:I = 0x539


# instance fields
.field adapter:Lat/fhooe/mc/foodlog/ResultAdapter;

.field private datasource:Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

.field private diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

.field list:Landroid/widget/ListView;

.field private previouslyAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field previouslySearched:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lat/fhooe/mc/foodlog/LookupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lat/fhooe/mc/foodlog/LookupActivity;->handleXMLModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lat/fhooe/mc/foodlog/LookupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lat/fhooe/mc/foodlog/LookupActivity;->scanProduct()V

    return-void
.end method

.method private handleXMLModel(Ljava/lang/String;)V
    .locals 14
    .parameter "xml"

    .prologue
    const/4 v13, 0x0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 240
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v11, "Es wurde kein Produkt gefunden"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 242
    const-string v12, "OK"

    .line 243
    new-instance v13, Lat/fhooe/mc/foodlog/LookupActivity$4;

    invoke-direct {v13, p0}, Lat/fhooe/mc/foodlog/LookupActivity$4;-><init>(Lat/fhooe/mc/foodlog/LookupActivity;)V

    .line 242
    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 297
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v5, "filename.txt"

    .line 254
    .local v5, filename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-direct {v4, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v4, file:Ljava/io/File;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 259
    .local v2, data:[B
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    .local v6, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v6, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 261
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 262
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :goto_1
    new-instance v10, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v10}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    .line 271
    .local v10, serializer:Lorg/simpleframework/xml/Serializer;
    const/4 v9, 0x0

    .line 273
    .local v9, result:Lat/fhooe/mc/foodlog/model/SearchResult;
    :try_start_1
    const-class v11, Lat/fhooe/mc/foodlog/model/SearchResult;

    invoke-interface {v10, v11, p1}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lat/fhooe/mc/foodlog/model/SearchResult;

    move-object v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :goto_2
    invoke-virtual {v9}, Lat/fhooe/mc/foodlog/model/SearchResult;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 283
    invoke-virtual {v9}, Lat/fhooe/mc/foodlog/model/SearchResult;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 284
    invoke-virtual {v9}, Lat/fhooe/mc/foodlog/model/SearchResult;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lat/fhooe/mc/foodlog/model/Item;

    .line 285
    .local v8, item:Lat/fhooe/mc/foodlog/model/Item;
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/LookupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 286
    const-class v12, Lat/fhooe/mc/foodlog/SearchDetailActivity;

    .line 285
    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v7, intent:Landroid/content/Intent;
    const-string v11, "item"

    invoke-virtual {v7, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v7, v13}, Lat/fhooe/mc/foodlog/LookupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 275
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #item:Lat/fhooe/mc/foodlog/model/Item;
    :catch_0
    move-exception v3

    .line 277
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    const-string v11, "kieslich"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 280
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lat/fhooe/mc/foodlog/model/Item;

    .line 281
    .restart local v8       #item:Lat/fhooe/mc/foodlog/model/Item;
    iget-object v12, p0, Lat/fhooe/mc/foodlog/LookupActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v12, v8}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->createFoodEntry(Lat/fhooe/mc/foodlog/model/Item;)V

    goto :goto_3

    .line 291
    .end local v8           #item:Lat/fhooe/mc/foodlog/model/Item;
    :cond_3
    if-eqz v9, :cond_0

    .line 292
    iget-object v11, p0, Lat/fhooe/mc/foodlog/LookupActivity;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v11, p0, Lat/fhooe/mc/foodlog/LookupActivity;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lat/fhooe/mc/foodlog/model/SearchResult;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v11, p0, Lat/fhooe/mc/foodlog/LookupActivity;->adapter:Lat/fhooe/mc/foodlog/ResultAdapter;

    invoke-virtual {v11}, Lat/fhooe/mc/foodlog/ResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 265
    .end local v9           #result:Lat/fhooe/mc/foodlog/model/SearchResult;
    .end local v10           #serializer:Lorg/simpleframework/xml/Serializer;
    :catch_1
    move-exception v11

    goto :goto_1

    .line 263
    :catch_2
    move-exception v11

    goto :goto_1
.end method

.method private scanProduct()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    .line 144
    const-class v1, Lcom/mirasense/demos/ScanditSDKSampleBarcodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x539

    .line 143
    invoke-virtual {p0, v0, v1}, Lat/fhooe/mc/foodlog/LookupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 164
    const/16 v1, 0x539

    if-ne p1, v1, :cond_0

    .line 165
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 166
    const-string v1, "EAN"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, ean:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/LookupActivity;->search(Ljava/lang/CharSequence;)V

    .line 168
    const-string v1, "kieslich"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0           #ean:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lat/fhooe/mc/foodlog/LookupActivity;->setContentView(I)V

    .line 66
    new-instance v3, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

    invoke-direct {v3, p0}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->datasource:Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

    .line 67
    iget-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->datasource:Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

    invoke-virtual {v3}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->open()V

    .line 68
    new-instance v3, Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-direct {v3, p0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    .line 69
    iget-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v3}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->open()V

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    iget-object v4, p0, Lat/fhooe/mc/foodlog/LookupActivity;->datasource:Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

    invoke-virtual {v4}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->getAllPreviouslySearched()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->previouslySearched:Ljava/util/List;

    .line 73
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 74
    const v4, 0x109000a

    iget-object v5, p0, Lat/fhooe/mc/foodlog/LookupActivity;->previouslySearched:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 73
    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->previouslyAdapter:Landroid/widget/ArrayAdapter;

    .line 75
    const v3, 0x7f0c0008

    invoke-virtual {p0, v3}, Lat/fhooe/mc/foodlog/LookupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 77
    .local v2, searchField:Landroid/widget/AutoCompleteTextView;
    iget-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->previouslyAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->searchResults:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/LookupActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 82
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/Item;>;"
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->searchResults:Ljava/util/ArrayList;

    .line 86
    :cond_0
    new-instance v3, Lat/fhooe/mc/foodlog/LookupActivity$1;

    invoke-direct {v3, p0}, Lat/fhooe/mc/foodlog/LookupActivity$1;-><init>(Lat/fhooe/mc/foodlog/LookupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 104
    const v3, 0x7f0c000a

    invoke-virtual {p0, v3}, Lat/fhooe/mc/foodlog/LookupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->list:Landroid/widget/ListView;

    .line 106
    new-instance v3, Lat/fhooe/mc/foodlog/ResultAdapter;

    const v4, 0x7f03000a

    iget-object v5, p0, Lat/fhooe/mc/foodlog/LookupActivity;->searchResults:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lat/fhooe/mc/foodlog/ResultAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->adapter:Lat/fhooe/mc/foodlog/ResultAdapter;

    .line 107
    iget-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lat/fhooe/mc/foodlog/LookupActivity;->adapter:Lat/fhooe/mc/foodlog/ResultAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v3, p0, Lat/fhooe/mc/foodlog/LookupActivity;->list:Landroid/widget/ListView;

    new-instance v4, Lat/fhooe/mc/foodlog/LookupActivity$2;

    invoke-direct {v4, p0}, Lat/fhooe/mc/foodlog/LookupActivity$2;-><init>(Lat/fhooe/mc/foodlog/LookupActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    const v3, 0x7f0c0009

    invoke-virtual {p0, v3}, Lat/fhooe/mc/foodlog/LookupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 123
    .local v1, scanButton:Landroid/widget/ImageButton;
    new-instance v3, Lat/fhooe/mc/foodlog/LookupActivity$3;

    invoke-direct {v3, p0}, Lat/fhooe/mc/foodlog/LookupActivity$3;-><init>(Lat/fhooe/mc/foodlog/LookupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const-string v3, "apfel"

    invoke-virtual {p0, v3}, Lat/fhooe/mc/foodlog/LookupActivity;->search(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity;->datasource:Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->close()V

    .line 139
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->close()V

    .line 140
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lat/fhooe/mc/foodlog/LookupActivity;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 151
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/Item;>;"
    return-object v0
.end method

.method protected search(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 155
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity;->datasource:Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->createPreviouslySearched(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    .line 157
    iget-object v1, p0, Lat/fhooe/mc/foodlog/LookupActivity;->datasource:Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;

    invoke-virtual {v1}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->getAllPreviouslySearched()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    iput-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity;->previouslySearched:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity;->previouslyAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 159
    new-instance v0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;

    invoke-direct {v0, p0, p0}, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;-><init>(Lat/fhooe/mc/foodlog/LookupActivity;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    return-void
.end method
