.class public Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;
.super Ljava/lang/Object;
.source "XmlBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_KEY:Ljava/lang/String; = "subscriptKey"

.field private static final TAG_NODE:Ljava/lang/String; = "subscriptNode"

.field private static final TAG_VALUE:Ljava/lang/String; = "subscriptValue"


# instance fields
.field private DEFAULT_FILE:Ljava/io/File;

.field private WITHOUT_SAVE_IGNORE_ITEM:Z

.field private mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "typeConvers":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "notificationSubscript.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    .line 46
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    .line 47
    return-void
.end method

.method private LOG_D(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 215
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    sget-object v0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method private LOG_E(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 219
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    sget-object v0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method private readFromXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    const/4 v6, 0x0

    .line 146
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 149
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-interface {v4, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 150
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 151
    .local v1, "eventCode":I
    const/4 v2, 0x0

    .line 152
    .local v2, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 153
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    .line 154
    packed-switch v1, :pswitch_data_0

    .line 177
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 156
    :pswitch_0
    const-string v7, "subscriptNode"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    const/4 v2, 0x0

    .line 159
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .local v5, "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 160
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    const-string v7, "subscriptKey"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->StringToK(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_1

    .line 163
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    const-string v7, "subscriptValue"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->StringToV(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 169
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :pswitch_1
    const-string v7, "subscriptNode"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v7, v2}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->KToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v7, v5}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->canItemIgnore(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    :cond_3
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 179
    .end local v1    # "eventCode":I
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 181
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :goto_2
    return-object v6

    .line 188
    .restart local v1    # "eventCode":I
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 193
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_5

    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :goto_4
    move-object v6, v3

    goto :goto_2

    .line 189
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 189
    .end local v1    # "eventCode":I
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 189
    :catch_4
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 188
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 191
    :goto_5
    throw v6

    .line 189
    :catch_5
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventCode":I
    :cond_5
    move-object v3, v6

    .line 193
    goto :goto_4

    .line 154
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveToXml(Ljava/util/HashMap;Ljava/io/Writer;)V
    .locals 9
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 108
    .local v6, "xmlSer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v6, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 109
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 110
    const-string v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    const/4 v7, 0x0

    sget-object v8, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd    hh:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "date":Ljava/lang/String;
    const-string v7, ""

    const-string v8, "date"

    invoke-interface {v6, v7, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 117
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 119
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 120
    .local v5, "val":Ljava/lang/Object;, "TV;"
    iget-boolean v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v7, v5}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->canItemIgnore(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 121
    :cond_1
    const/4 v7, 0x0

    const-string v8, "subscriptNode"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const/4 v7, 0x0

    const-string v8, "subscriptKey"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v7, v3}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->KToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    const/4 v7, 0x0

    const-string v8, "subscriptKey"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    const/4 v7, 0x0

    const-string v8, "subscriptValue"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v7, v5}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->VToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const/4 v7, 0x0

    const-string v8, "subscriptValue"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const/4 v7, 0x0

    const-string v8, "subscriptNode"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 136
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "sDateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 143
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void

    .line 131
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .restart local v4    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    sget-object v8, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 134
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 135
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 138
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .end local v4    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 197
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 198
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 200
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationSubscriptXmlHelper.dump(),f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p2}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v2

    .line 202
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 203
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "val":Ljava/lang/Object;, "TV;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v5, v1}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->KToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->mTypeConvers:Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v5, v3}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;->VToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "val":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 213
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_1
    return-void

    .line 211
    :cond_1
    const-string v4, "\t not data !"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public read()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/File;)Ljava/util/HashMap;
    .locals 4
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    const/4 v1, 0x0

    .line 98
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 102
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {p0, v1}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->readFromXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    const-string v1, "readXmlStrs(in)== null"

    invoke-direct {p0, v1}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->LOG_E(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->LOG_E(Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 92
    goto :goto_0
.end method

.method public save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;
    .locals 7
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 58
    const-string v4, "testWriter"

    invoke-direct {p0, v4}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->LOG_D(Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 61
    .local v3, "status":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcontex.deleteFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->LOG_D(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v1, p2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 64
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-direct {p0, p1, v2}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->saveToXml(Ljava/util/HashMap;Ljava/io/Writer;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v3    # "status":Z
    :goto_0
    return-object v4

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 69
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public save(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 55
    return-void
.end method

.method public setWithoutSaveIgnoreItem(Z)V
    .locals 0
    .param p1, "withoutSave"    # Z

    .prologue
    .line 50
    .local p0, "this":Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;, "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper<TK;TV;>;"
    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    .line 51
    return-void
.end method
