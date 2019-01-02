================
Docs Style Guide
================

.. admonition:: Abstract

   This document focuses on style-guide. It is a kind of coding standards applied to documentation files.
   It is not about documentation content.

.. contents::
   :local:
   :depth: 1
   :backlinks: none

RestructuredText With Sphinx Directives
=======================================

This documentation uses `Sphinx <http://www.sphinx-doc.org/en/master/>`_, which itself uses `reStructuredText <https://en.wikipedia.org/wiki/ReStructuredText>`_ syntax.

Filenames
---------

Use lowercase alphanumeric characters and ``-`` (minus) symbol.

Suffix filenames with the ``.rst`` extension.

Whitespaces
===========

Indent with 3 spaces.

Blank Lines
-----------

Two blank lines before overlined sections, i.e. before H1 and H2.
One blank line before other sections.

One blank line to separate directives.

.. code-block:: rst

  Some text before.

  .. note::

    Some note.

Line Length
-----------

Limit all lines to a maximum of 130 characters.

Headings
--------

Use the following symbols to create headings:

#. ``#`` with overline
#. ``=``
#. ``-``
#. ``*``
#. ``^``
#. ``"``

As an example:

.. code-block:: rst

   ##################
   H1: document title
   ##################

   Introduction text.

   Sample H2
   =========

   Sample content.

   Another H2
   ==========

   Sample H3
   ---------

   Sample H4
   *********

   Sample H5
   ^^^^^^^^^

   Sample H6
   """""""""

   And some text.

If you need more than heading level 4 (i.e. H5 or H6), then you should consider creating a new document.

Code Blocks
-----------

Use the ``code-block`` directive **and** specify the programming language.
As an example:

.. code-block:: rst

  .. code-block:: python

    import this

Quality Assurance
=================

We use `Rakpart <https://rakpart.testthedocs.org>`_ to run QA checks against our docs.

Checks are included in the main ``Makefile`` as targets.

Run ``make help`` for more info !
