.class public Lcom/myfile/MyFile;
.super Ljava/lang/Object;
.source "MyFile.java"

# const-string v1, "22455"
# invoke-static {v1}, Lcom/myfile/MyFile;->appendLog(Ljava/lang/String;)V
#invoke-static {v1}, Lcom/myfile/MyFile;->touchFile(Ljava/lang/String;)V
#invoke-static {v1}, Lcom/myfile/MyFile;->updateFile(Ljava/lang/String;)V

#const-string v1, "/sdcard/a.conf"
#invoke-static {v1}, Lcom/myfile/myapp/MyFile;->getRandomPeer(Ljava/lang/String;)Ljava/lang/String;
#move-result-object v1

# <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
# <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
# <uses-permission android:name="android.permission.MANAGE_EXTERNAL_STORAGE" />

#<uses-permission android:name="android.permission.MOUNT_UNMOUNT_FILESYSTEMS"/>
#<uses-permission android:name="android.permission.WRITE_SETTINGS"/>

# android:allowBackup="true"  android:debuggable="true" android:requestLegacyExternalStorage="true"




# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLog(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8
    move-object v0, p0

    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "/storage/emulated/0/log.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 9
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_18

    .line 13
    move-object v5, v2

    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_3a

    move-result v5

    .line 24
    :cond_18
    :goto_18
    :try_start_18
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/FileWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 25
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 26
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 27
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_39} :catch_41

    .line 32
    :goto_39
    return-void

    .line 13
    :catch_3a
    move-exception v5

    move-object v3, v5

    .line 18
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 27
    :catch_41
    move-exception v5

    move-object v3, v5

    .line 32
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39
.end method

.method public static getRandomPeer(Ljava/lang/String;)Ljava/lang/String;
    .registers 29

    .prologue
    .line 80
    move-object/from16 v2, p0

    const-string v21, ""

    move-object/from16 v4, v21

    .line 81
    const-string v21, ""

    move-object/from16 v5, v21

    .line 82
    const-string v21, ""

    move-object/from16 v6, v21

    .line 84
    :try_start_e
    new-instance v21, Ljava/io/FileReader;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    new-instance v23, Ljava/io/File;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v22 .. v23}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v7, v21

    .line 85
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 86
    const/16 v21, 0x0

    move/from16 v9, v21

    .line 87
    new-instance v21, Ljava/io/BufferedReader;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v7

    invoke-direct/range {v22 .. v23}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v10, v21

    .line 88
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_44} :catch_1de
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_44} :catch_1e3

    move-result-object v21

    move-object/from16 v11, v21

    .line 89
    :goto_47
    move-object/from16 v21, v11

    if-nez v21, :cond_12e

    .line 108
    :goto_4b
    move-object/from16 v21, v6

    move-object/from16 v7, v21

    .line 109
    const-string v21, "Peer"

    move-object/from16 v8, v21

    .line 110
    const/16 v21, 0x0

    move/from16 v9, v21

    .line 111
    const/16 v21, 0x0

    move/from16 v10, v21

    .line 112
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v11, v21

    .line 113
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v12, v21

    .line 114
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v13, v21

    .line 116
    move/from16 v21, v11

    move/from16 v22, v13

    sub-int v21, v21, v22

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    div-int v21, v21, v22

    move/from16 v14, v21

    .line 117
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v21

    move/from16 v23, v14

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v15, v21

    .line 119
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v22, v14

    div-int v21, v21, v22

    move/from16 v16, v21

    .line 122
    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v16

    mul-int v23, v23, v24

    move/from16 v24, v15

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v16

    mul-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v5, v21

    .line 125
    const-string v21, "/data/user/0/com.tunsafe.app/files/Config/tmp.conf"

    move-object/from16 v17, v21

    .line 127
    new-instance v21, Ljava/io/File;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v17

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v21

    .line 129
    move-object/from16 v21, v18

    :try_start_f1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    move-result v21

    .line 130
    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    move-result v21

    .line 131
    new-instance v21, Ljava/io/BufferedWriter;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    new-instance v23, Ljava/io/FileWriter;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move-object/from16 v25, v18

    const/16 v26, 0x1

    invoke-direct/range {v24 .. v26}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v22 .. v23}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v19, v21

    .line 132
    move-object/from16 v21, v19

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v21

    .line 133
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedWriter;->newLine()V

    .line 134
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedWriter;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_129} :catch_1e8

    .line 137
    :goto_129
    move-object/from16 v21, v17

    move-object/from16 v2, v21

    return-object v2

    .line 90
    :cond_12e
    move-object/from16 v21, v11

    :try_start_130
    const-string v22, "Interface"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_13c

    .line 91
    const/16 v21, 0x1

    move/from16 v8, v21

    .line 92
    :cond_13c
    move-object/from16 v21, v11

    const-string v22, "Peer"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_14a

    .line 93
    const/16 v21, 0x1

    move/from16 v9, v21

    .line 94
    :cond_14a
    move/from16 v21, v8

    if-eqz v21, :cond_188

    move/from16 v21, v9

    if-nez v21, :cond_188

    .line 95
    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v5, v21

    .line 97
    :cond_188
    move-object/from16 v21, v11

    const-string v22, "Peer"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_19a

    .line 98
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 99
    const/16 v21, 0x1

    move/from16 v9, v21

    .line 100
    :cond_19a
    move/from16 v21, v9

    if-eqz v21, :cond_1d4

    .line 101
    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v6, v21

    .line 103
    :cond_1d4
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1d9
    .catch Ljava/io/FileNotFoundException; {:try_start_130 .. :try_end_1d9} :catch_1de
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_1d9} :catch_1e3

    move-result-object v21

    move-object/from16 v11, v21

    goto/16 :goto_47

    .line 89
    :catch_1de
    move-exception v21

    move-object/from16 v7, v21

    goto/16 :goto_4b

    :catch_1e3
    move-exception v21

    move-object/from16 v7, v21

    goto/16 :goto_4b

    .line 134
    :catch_1e8
    move-exception v21

    move-object/from16 v19, v21

    goto/16 :goto_129
.end method

.method public static touchFile(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "/storage/emulated/0/tmp.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 40
    move-object v5, v2

    :try_start_d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 41
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v5

    .line 42
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/FileWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 43
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 44
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 45
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_38

    .line 50
    :goto_37
    return-void

    .line 45
    :catch_38
    move-exception v5

    move-object v3, v5

    .line 50
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method

.method public static updateFile(Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v0, p0

    :try_start_2
    new-instance v9, Ljava/io/FileReader;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "/storage/emulated/0/tmp.conf"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 57
    new-instance v9, Ljava/io/BufferedReader;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v9

    .line 58
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 59
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 60
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 63
    move-object v9, v4

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v5, v9

    .line 64
    new-instance v9, Ljava/io/File;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "/storage/emulated/0/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ".conf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 65
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    .line 66
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v9

    .line 67
    new-instance v9, Ljava/io/BufferedWriter;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/io/FileWriter;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v6

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v7, v9

    .line 68
    move-object v9, v7

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v9

    .line 69
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->newLine()V

    .line 70
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_91} :catch_92

    .line 76
    :goto_91
    return-void

    .line 70
    :catch_92
    move-exception v9

    move-object v2, v9

    .line 76
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_91
.end method
