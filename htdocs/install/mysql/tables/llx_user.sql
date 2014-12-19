-- ============================================================================
-- Copyright (C) 2001-2003 Rodolphe Quiedeville <rodolphe@quiedeville.org>
-- Copyright (C) 2006-2013 Laurent Destailleur  <eldy@users.sourceforge.net>
-- Copyright (C) 2007-2013 Regis Houssin        <regis.houssin@capnetworks.com>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- ===========================================================================

create table llx_user
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  entity            integer DEFAULT 1 NOT NULL, -- multi company id

  ref_ext			varchar(50),				-- reference into an external system (not used by dolibarr)
  ref_int			varchar(50),				-- reference into an internal system (deprecated)

  datec             datetime,
  tms               timestamp,
  login             varchar(24) NOT NULL,
  pass              varchar(32),
  pass_crypted      varchar(128),
  pass_temp         varchar(32),			    -- temporary password when asked for forget password
  civilite          varchar(6),
  lastname          varchar(50),
  firstname         varchar(50),
  address           varchar(255),                        		-- user personal address
  zip               varchar(25),                         		-- zipcode
  town              varchar(50),                         		-- town
  fk_state          integer        DEFAULT 0,            		--
  fk_country        integer        DEFAULT 0,            		--
  job				varchar(128),
  skype             varchar(255),
  office_phone      varchar(20),
  office_fax        varchar(20),
  user_mobile       varchar(20),
  email             varchar(255),
  signature         text DEFAULT NULL,
  admin             smallint DEFAULT 0,
  module_comm       smallint DEFAULT 1,
  module_compta     smallint DEFAULT 1,
  fk_societe        integer,
  fk_socpeople      integer,
  fk_member         integer,
  fk_user           integer,               -- Hierarchic parent
  thm				double(24,8),
  note              text DEFAULT NULL,
  datelastlogin     datetime,
  datepreviouslogin datetime,
  egroupware_id     integer,
  ldap_sid          varchar(255) DEFAULT NULL,
  openid            varchar(255),
  statut            tinyint DEFAULT 1,
  photo             varchar(255),     -- filename or url of photo
  lang              varchar(6),
  color				varchar(6),
  barcode			varchar(255) DEFAULT NULL,
  fk_barcode_type	integer      DEFAULT 0,
  accountancy_code  varchar(24) NULL,
  nb_holiday		integer DEFAULT 0,
  salary			double(24,8)
)ENGINE=innodb;
