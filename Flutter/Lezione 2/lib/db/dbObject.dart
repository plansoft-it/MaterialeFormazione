import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

part 'dbObject.g.dart';

const jsonDB = SqfEntityTable(
  tableName: 'json_from_uri',
  primaryKeyName: 'id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  useSoftDeleting: false,
  fields: [
    SqfEntityField('author', DbType.text, isNotNull: false),
    SqfEntityField('width', DbType.integer, isNotNull: false),
    SqfEntityField('height', DbType.integer, isNotNull: false),
    SqfEntityField('url', DbType.text, isNotNull: false),
    SqfEntityField('download_url', DbType.text, isNotNull: false)
  ], formListSubTitleField: 'JSON URI');

const tempTable = SqfEntityTable(
  tableName: 'tempTable',
  primaryKeyName: 'id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  useSoftDeleting: true,
  fields: [
    SqfEntityField('name', DbType.text, isNotNull: false),
    SqfEntityField('surname', DbType.text, isNotNull: false)
  ], formListSubTitleField: 'TEMP TABLE');

const seqIndentity = SqfEntitySequence(
  sequenceName: 'identity'
);

@SqfEntityBuilder(appDB)

const appDB = SqfEntityModel(
  modelName: 'appDB',
  databaseName: 'appDB.db',
  password: null,
  databaseTables: [
    jsonDB,
    tempTable
  ],
  formTables: null, //[jsonDB, tempTable],
  sequences: [ seqIndentity ],
  dbVersion: 2,
  bundledDatabasePath: null);



